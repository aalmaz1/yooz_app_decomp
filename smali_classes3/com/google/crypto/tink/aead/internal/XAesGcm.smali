.class public final Lcom/google/crypto/tink/aead/internal/XAesGcm;
.super Ljava/lang/Object;
.source "XAesGcm.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final DERIVED_KEY_SIZE_IN_BYTES:I = 0x20

.field private static final IV_SIZE_IN_BYTES:I = 0xc

.field private static final MAX_SALT_SIZE_IN_BYTES:I = 0xc

.field private static final MIN_SALT_SIZE_IN_BYTES:I = 0x8

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final cmac:Lcom/google/crypto/tink/prf/Prf;

.field private final outputPrefix:[B

.field private final saltSize:I


# direct methods
.method private constructor <init>([BLcom/google/crypto/tink/util/Bytes;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "outputPrefix",
            "saltSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/crypto/tink/subtle/PrfAesCmac;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/PrfAesCmac;-><init>([B)V

    iput-object v0, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->cmac:Lcom/google/crypto/tink/prf/Prf;

    .line 58
    invoke-virtual {p2}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    .line 59
    iput p3, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/XAesGcmKey;)Lcom/google/crypto/tink/Aead;
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

    .line 64
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/google/crypto/tink/aead/internal/XAesGcm;

    .line 69
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/crypto/tink/aead/internal/XAesGcm;-><init>([BLcom/google/crypto/tink/util/Bytes;I)V

    return-object v0

    .line 66
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid salt size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private derivePerMessageKey([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 75
    fill-array-data v1, :array_0

    new-array v2, v0, [B

    .line 76
    fill-array-data v2, :array_1

    .line 77
    array-length v3, p1

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    array-length v3, p1

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 80
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {p1, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    array-length v3, p1

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x20

    new-array p1, p1, [B

    .line 84
    iget-object v3, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->cmac:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v3, v1, v0}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object v1

    invoke-static {v1, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->cmac:Lcom/google/crypto/tink/prf/Prf;

    invoke-interface {v1, v2, v0}, Lcom/google/crypto/tink/prf/Prf;->compute([BI)[B

    move-result-object v1

    invoke-static {v1, v4, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid salt size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 4
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

    if-eqz p1, :cond_2

    .line 117
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v2, v1

    iget v3, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x10

    if-lt v0, v2, :cond_1

    .line 120
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/2addr v0, v1

    .line 124
    new-instance v1, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;

    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v2, v2

    .line 127
    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 126
    invoke-direct {p0, v2}, Lcom/google/crypto/tink/aead/internal/XAesGcm;->derivePerMessageKey([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;-><init>([B)V

    add-int/lit8 v2, v0, 0xc

    .line 129
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 128
    invoke-virtual {v1, v0, p1, v2, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->decrypt([B[BI[B)[B

    move-result-object p1

    return-object p1

    .line 121
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .locals 5
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

    if-eqz p1, :cond_0

    .line 95
    iget v0, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    .line 96
    iget v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 97
    iget v2, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/lit8 v3, v2, 0xc

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 99
    new-instance v3, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/aead/internal/XAesGcm;->derivePerMessageKey([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;-><init>([B)V

    .line 101
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v1, v1

    iget v4, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->saltSize:I

    add-int/2addr v1, v4

    array-length v4, v2

    add-int/2addr v1, v4

    .line 102
    invoke-virtual {v3, v2, p1, v1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->encrypt([B[BI[B)[B

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/XAesGcm;->outputPrefix:[B

    array-length p2, p2

    array-length v1, v0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
