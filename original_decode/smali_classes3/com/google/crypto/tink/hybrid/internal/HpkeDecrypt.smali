.class public final Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;
.super Ljava/lang/Object;
.source "HpkeDecrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridDecrypt;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY_ASSOCIATED_DATA:[B


# instance fields
.field private final aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

.field private final encapsulatedKeyLength:I

.field private final kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

.field private final kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

.field private final outputPrefix:[B

.field private final recipientPrivateKey:Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 38
    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->EMPTY_ASSOCIATED_DATA:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;ILcom/google/crypto/tink/util/Bytes;)V
    .locals 0
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
            "recipientPrivateKey",
            "kem",
            "kdf",
            "aead",
            "encapsulatedKeyLength",
            "outputPrefix"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->recipientPrivateKey:Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;

    .line 57
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    .line 58
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    .line 59
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 60
    iput p5, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->encapsulatedKeyLength:I

    .line 61
    invoke-virtual {p6}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->outputPrefix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;)Lcom/google/crypto/tink/HybridDecrypt;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->createKem(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    move-result-object v4

    .line 101
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->createKdf(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    move-result-object v5

    .line 102
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkeEncrypt;->createAead(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    move-result-object v6

    .line 103
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->encodingSizeInBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I

    move-result v7

    .line 104
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->createHpkeKemPrivateKey(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;

    move-result-object v3

    .line 105
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;-><init>(Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;ILcom/google/crypto/tink/util/Bytes;)V

    return-object v0
.end method

.method private static createHpkeKemPrivateKey(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getPrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;

    .line 93
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;-><init>(Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;)V

    return-object v1
.end method

.method private static encodingSizeInBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kemId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    return p0

    .line 69
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x41

    return p0

    .line 72
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x61

    return p0

    .line 75
    :cond_2
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x85

    return p0

    .line 78
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->outputPrefix:[B

    array-length v1, v0

    iget v2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->encapsulatedKeyLength:I

    add-int/2addr v1, v2

    .line 118
    array-length v2, p1

    if-lt v2, v1, :cond_2

    .line 121
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [B

    :cond_0
    move-object v7, p2

    .line 128
    iget-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->outputPrefix:[B

    array-length p2, p2

    .line 129
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->recipientPrivateKey:Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->kem:Lcom/google/crypto/tink/hybrid/internal/HpkeKem;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->kdf:Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->aead:Lcom/google/crypto/tink/hybrid/internal/HpkeAead;

    .line 131
    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->createRecipientContext([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;Lcom/google/crypto/tink/hybrid/internal/HpkeKem;Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;Lcom/google/crypto/tink/hybrid/internal/HpkeAead;[B)Lcom/google/crypto/tink/hybrid/internal/HpkeContext;

    move-result-object p2

    .line 133
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeDecrypt;->EMPTY_ASSOCIATED_DATA:[B

    invoke-virtual {p2, p1, v1, v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeContext;->open([BI[B)[B

    move-result-object p1

    return-object p1

    .line 122
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid ciphertext (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext is too short."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
