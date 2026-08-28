.class public final Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;
.super Ljava/lang/Object;
.source "InsecureNonceAesGcmJce.java"


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final IV_SIZE_IN_BYTES:I = 0xc

.field public static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final keySpec:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 44
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->getSecretKey([B)Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    return-void

    .line 41
    :cond_12
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decrypt([B[BI[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "iv",
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

    .line 103
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2f

    .line 106
    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_27

    .line 109
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 110
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->getThreadLocalCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 111
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p4, :cond_20

    .line 112
    array-length p1, p4

    if-eqz p1, :cond_20

    .line 113
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 115
    :cond_20
    array-length p1, p2

    sub-int/2addr p1, p3

    invoke-virtual {v0, p2, p3, p1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 107
    :cond_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_2f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decrypt([B[B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "iv",
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

    .line 88
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->decrypt([B[BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[BI[B)[B
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "iv",
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

    .line 62
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_46

    .line 65
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 66
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/AesGcmJceUtil;->getThreadLocalCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p4, :cond_1b

    .line 68
    array-length p1, p4

    if-eqz p1, :cond_1b

    .line 69
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 71
    :cond_1b
    array-length p1, p2

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    const p4, 0x7fffffff

    sub-int/2addr p4, p3

    if-gt p1, p4, :cond_3e

    add-int p4, p3, p1

    .line 77
    new-array p4, p4, [B

    const/4 v2, 0x0

    .line 78
    array-length v3, p2

    move-object v1, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    if-ne p2, p1, :cond_36

    return-object p4

    .line 80
    :cond_36
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_3e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_46
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "iv",
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

    .line 50
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->encrypt([B[BI[B)[B

    move-result-object p1

    return-object p1
.end method
