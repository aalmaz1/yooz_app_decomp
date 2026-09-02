.class final Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;
.super Ljava/lang/Object;
.source "X25519HpkeKem.java"

# interfaces
.implements Lcom/google/crypto/tink/hybrid/internal/HpkeKem;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$X25519Java;
    }
.end annotation


# instance fields
.field private final hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

.field private final x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hkdf"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    .line 60
    :try_start_5
    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/X25519Conscrypt;->create()Lcom/google/crypto/tink/hybrid/internal/X25519;

    move-result-object p1
    :try_end_9
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_10

    .line 62
    :catch_a
    new-instance p1, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$X25519Java;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$X25519Java;-><init>(Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$1;)V

    .line 64
    :goto_10
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    return-void
.end method

.method private deriveKemSharedSecret([B[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dhSharedSecret",
            "senderEphemeralPublicKey",
            "recipientPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 70
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p2

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->extractAndExpand([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private deriveKemSharedSecret([B[B[B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dhSharedSecret",
            "senderEphemeralPublicKey",
            "recipientPublicKey",
            "senderPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 80
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p2

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->extractAndExpand([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private extractAndExpand([B[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dhSharedSecret",
            "kemContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->X25519_HKDF_SHA256_KEM_ID:[B

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->kemSuiteId([B)[B

    move-result-object v7

    .line 87
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const/4 v2, 0x0

    const-string v4, "eae_prk"

    const-string v6, "shared_secret"

    .line 94
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->getMacLength()I

    move-result v8

    move-object v3, p1

    move-object v5, p2

    .line 87
    invoke-virtual/range {v1 .. v8}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->extractAndExpand([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public authDecapsulate([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;[B)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "recipientPrivateKey",
            "senderPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 156
    invoke-virtual {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPrivate()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 157
    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    .line 159
    invoke-interface {v2, v0, p1}, Lcom/google/crypto/tink/hybrid/internal/X25519;->computeSharedSecret([B[B)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    .line 160
    invoke-interface {v2, v0, p3}, Lcom/google/crypto/tink/hybrid/internal/X25519;->computeSharedSecret([B[B)[B

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 158
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPublic()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p2

    .line 162
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->deriveKemSharedSecret([B[B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public authEncapsulate([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientPublicKey",
            "senderPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    invoke-interface {v0}, Lcom/google/crypto/tink/hybrid/internal/X25519;->generateKeyPair()Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;

    move-result-object v0

    .line 138
    iget-object v1, v0, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;->privateKey:[B

    iget-object v0, v0, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;->publicKey:[B

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->authEncapsulateWithFixedEphemeralKey([B[B[BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    move-result-object p1

    return-object p1
.end method

.method authEncapsulateWithFixedEphemeralKey([B[B[BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientPublicKey",
            "ephemeralPrivateKey",
            "ephemeralPublicKey",
            "senderPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 121
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    .line 123
    invoke-interface {v1, p2, p1}, Lcom/google/crypto/tink/hybrid/internal/X25519;->computeSharedSecret([B[B)[B

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    .line 125
    invoke-virtual {p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPrivate()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v1

    .line 124
    invoke-interface {p2, v1, p1}, Lcom/google/crypto/tink/hybrid/internal/X25519;->computeSharedSecret([B[B)[B

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 122
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p2

    .line 126
    invoke-virtual {p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPublic()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p4

    .line 128
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->deriveKemSharedSecret([B[B[B[B)[B

    move-result-object p1

    .line 130
    new-instance p2, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    invoke-direct {p2, p1, p3}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;-><init>([B[B)V

    return-object p2
.end method

.method public decapsulate([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "recipientPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    .line 147
    invoke-virtual {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPrivate()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v1

    .line 146
    invoke-interface {v0, v1, p1}, Lcom/google/crypto/tink/hybrid/internal/X25519;->computeSharedSecret([B[B)[B

    move-result-object v0

    .line 149
    invoke-virtual {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPublic()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p2

    .line 148
    invoke-direct {p0, v0, p1, p2}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->deriveKemSharedSecret([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encapsulate([B)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    invoke-interface {v0}, Lcom/google/crypto/tink/hybrid/internal/X25519;->generateKeyPair()Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;

    move-result-object v0

    .line 110
    iget-object v1, v0, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;->privateKey:[B

    iget-object v0, v0, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;->publicKey:[B

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->encapsulateWithFixedEphemeralKey([B[B[B)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    move-result-object p1

    return-object p1
.end method

.method encapsulateWithFixedEphemeralKey([B[B[B)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientPublicKey",
            "ephemeralPrivateKey",
            "ephemeralPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->x25519:Lcom/google/crypto/tink/hybrid/internal/X25519;

    invoke-interface {v0, p2, p1}, Lcom/google/crypto/tink/hybrid/internal/X25519;->computeSharedSecret([B[B)[B

    move-result-object p2

    .line 103
    invoke-direct {p0, p2, p3, p1}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->deriveKemSharedSecret([B[B[B)[B

    move-result-object p1

    .line 104
    new-instance p2, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    invoke-direct {p2, p1, p3}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;-><init>([B[B)V

    return-object p2
.end method

.method public getKemId()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;->hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->getKdfId()[B

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA256_KDF_ID:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 169
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->X25519_HKDF_SHA256_KEM_ID:[B

    return-object v0

    .line 171
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
