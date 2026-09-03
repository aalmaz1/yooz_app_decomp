.class public final Lcom/google/crypto/tink/subtle/AesEaxJce;
.super Ljava/lang/Object;
.source "AesEaxJce.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BLOCK_SIZE_IN_BYTES:I = 0x10

.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final localCtrCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final localEcbCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[B

.field private final ivSizeInBytes:I

.field private final keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final outputPrefix:[B

.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 61
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    .line 73
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce$2;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce$2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "ivSizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;-><init>([BI[B)V

    return-void
.end method

.method private constructor <init>([BI[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "ivSizeInBytes",
            "outputPrefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    const/16 v1, 0x10

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV size should be either 12 or 16 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    .line 123
    array-length p2, p1

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 124
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 125
    sget-object p1, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-array p2, v1, [B

    .line 127
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/AesEaxJce;->multiplyByX([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    .line 129
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/AesEaxJce;->multiplyByX([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->p:[B

    .line 130
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    return-void

    .line 116
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/aead/AesEaxKey;)Lcom/google/crypto/tink/Aead;
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

    .line 100
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxKey;->getParameters()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesEaxParameters;->getTagSizeBytes()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 107
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce;

    .line 108
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxKey;->getParameters()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesEaxParameters;->getIvSizeBytes()I

    move-result v2

    .line 110
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/crypto/tink/subtle/AesEaxJce;-><init>([BI[B)V

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AesEaxJce only supports 16 byte tag size, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxKey;->getParameters()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesEaxParameters;->getTagSizeBytes()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static multiplyByX([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "block"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    .line 158
    aget-byte v3, p0, v2

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x7

    xor-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    move v2, v4

    goto :goto_0

    .line 161
    :cond_0
    aget-byte v2, p0, v3

    shl-int/lit8 v2, v2, 0x1

    aget-byte p0, p0, v1

    shr-int/lit8 p0, p0, 0x7

    and-int/lit16 p0, p0, 0x87

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-object v0
.end method

.method private omac(Ljavax/crypto/Cipher;I[BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "ecb",
            "tag",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    const/16 v2, 0xf

    int-to-byte p2, p2

    aput-byte p2, v1, v2

    if-nez p5, :cond_0

    .line 205
    iget-object p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {v1, p2}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)V

    .line 206
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array p2, v0, [B

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move v3, v2

    :goto_0
    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    sub-int v4, p5, v3

    if-le v4, v0, :cond_2

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_1

    .line 222
    aget-byte v5, v1, v4

    add-int v6, p4, v3

    add-int/2addr v6, v4

    aget-byte v6, p3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    :cond_2
    add-int/2addr v3, p4

    add-int/2addr p4, p5

    .line 230
    invoke-direct {p0, p3, v3, p4}, Lcom/google/crypto/tink/subtle/AesEaxJce;->pad([BII)[B

    move-result-object p3

    .line 231
    invoke-static {v1, p3}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)V

    .line 232
    invoke-virtual {p1, v1, v2, v0, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    return-object p2
.end method

.method private pad([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "data",
            "lastBlockFrom",
            "lastBlockTo"
        }
    .end annotation

    .line 172
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 173
    array-length p2, p1

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    .line 174
    iget-object p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {p1, p2}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)V

    return-object p1

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->p:[B

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    const/4 p3, 0x0

    .line 178
    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    .line 179
    aget-byte v0, p2, p3

    aget-byte v1, p1, p3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 181
    :cond_1
    array-length p3, p1

    array-length p1, p1

    aget-byte p1, p2, p1

    xor-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    return-object p2
.end method

.method private static xor([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 143
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 145
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 12
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

    .line 279
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v2, v1

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    sub-int/2addr v0, v2

    const/16 v2, 0x10

    sub-int/2addr v0, v2

    if-ltz v0, :cond_4

    .line 284
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    sget-object v1, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 288
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v5, 0x0

    .line 289
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v7, v3

    iget v8, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    move-object v3, p0

    move-object v4, v1

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v10

    const/4 v11, 0x0

    if-nez p2, :cond_0

    new-array p2, v11, [B

    :cond_0
    move-object v6, p2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 294
    array-length v8, v6

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object p2

    const/4 v5, 0x2

    .line 295
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int v7, v3, v4

    move-object v3, p0

    move-object v4, v1

    move-object v6, p1

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v1

    .line 297
    array-length v3, p1

    sub-int/2addr v3, v2

    move v4, v11

    :goto_0
    if-ge v11, v2, :cond_1

    add-int v5, v3, v11

    .line 299
    aget-byte v5, p1, v5

    aget-byte v6, p2, v11

    xor-int/2addr v5, v6

    aget-byte v6, v10, v11

    xor-int/2addr v5, v6

    aget-byte v6, v1, v11

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 304
    sget-object p2, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/Cipher;

    .line 305
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p2, v9, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 306
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int/2addr v1, v2

    invoke-virtual {p2, p1, v1, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 302
    :cond_2
    new-instance p1, Ljavax/crypto/AEADBadTagException;

    const-string p2, "tag mismatch"

    invoke-direct {p1, p2}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .locals 15
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

    move-object v6, p0

    move-object/from16 v7, p1

    .line 241
    array-length v0, v7

    iget-object v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v2, v1

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    iget v2, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    sub-int/2addr v3, v2

    const/16 v8, 0x10

    sub-int/2addr v3, v8

    if-gt v0, v3, :cond_2

    .line 245
    array-length v0, v1

    add-int/2addr v0, v2

    array-length v2, v7

    add-int/2addr v0, v2

    add-int/2addr v0, v8

    .line 246
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 249
    iget v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v3

    .line 250
    iget-object v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v0, v0

    iget v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    const/4 v10, 0x0

    invoke-static {v3, v10, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljavax/crypto/Cipher;

    .line 257
    iget-object v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 258
    array-length v5, v3

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v13

    if-nez p2, :cond_0

    new-array v0, v10, [B

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 263
    array-length v5, v3

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v14

    .line 264
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 265
    iget-object v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v13}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v12, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v2, 0x0

    .line 266
    array-length v3, v7

    iget-object v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v1, v1

    iget v4, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int v5, v1, v4

    move-object/from16 v1, p1

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    const/4 v2, 0x2

    .line 267
    iget-object v0, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v0, v0

    iget v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int v4, v0, v1

    array-length v5, v7

    move-object v0, p0

    move-object v1, v11

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v0

    .line 268
    iget-object v1, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->outputPrefix:[B

    array-length v1, v1

    array-length v2, v7

    add-int/2addr v1, v2

    iget v2, v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int/2addr v1, v2

    :goto_1
    if-ge v10, v8, :cond_1

    add-int v2, v1, v10

    .line 270
    aget-byte v3, v14, v10

    aget-byte v4, v13, v10

    xor-int/2addr v3, v4

    aget-byte v4, v0, v10

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-object v9

    .line 243
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "plaintext too long"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
