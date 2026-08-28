.class final Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;
.super Ljava/lang/Object;
.source "HkdfHpkeKdf.java"

# interfaces
.implements Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final macAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "macAlgorithm"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    return-void
.end method

.method private expand([B[BI)[B
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "prk",
            "info",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 57
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p3, v1, :cond_43

    .line 60
    new-array v1, p3, [B

    .line 63
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    new-array v2, p1, [B

    const/4 v3, 0x1

    move v4, p1

    .line 66
    :goto_23
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 67
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte v2, v3

    .line 68
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 69
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    .line 70
    array-length v5, v2

    add-int/2addr v5, v4

    if-ge v5, p3, :cond_3e

    .line 71
    array-length v5, v2

    invoke-static {v2, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3e
    sub-int/2addr p3, v4

    .line 75
    invoke-static {v2, p1, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 58
    :cond_43
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "size too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extract([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ikm",
            "salt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    if-eqz p2, :cond_1b

    .line 40
    array-length v1, p2

    if-nez v1, :cond_10

    goto :goto_1b

    .line 45
    :cond_10
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_2b

    .line 43
    :cond_1b
    :goto_1b
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 47
    :goto_2b
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public extractAndExpand([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm",
            "ikmLabel",
            "info",
            "infoLabel",
            "suiteId",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    invoke-static {p3, p2, p6}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelIkm(Ljava/lang/String;[B[B)[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->extract([B[B)[B

    move-result-object p1

    .line 105
    invoke-static {p5, p4, p6, p7}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelInfo(Ljava/lang/String;[B[BI)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p7}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->expand([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public getKdfId()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_42

    goto :goto_2e

    :sswitch_e
    const-string v1, "HmacSha512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v2, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v1, "HmacSha384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2e

    :cond_22
    const/4 v2, 0x1

    goto :goto_2e

    :sswitch_24
    const-string v1, "HmacSha256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    packed-switch v2, :pswitch_data_50

    .line 118
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KDF ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_39
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA512_KDF_ID:[B

    return-object v0

    .line 114
    :pswitch_3c
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA384_KDF_ID:[B

    return-object v0

    .line 112
    :pswitch_3f
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA256_KDF_ID:[B

    return-object v0

    :sswitch_data_42
    .sparse-switch
        0x3aaea10e -> :sswitch_24
        0x3aaea52a -> :sswitch_19
        0x3aaeabd1 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

.method getMacLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    return v0
.end method

.method public labeledExpand([B[BLjava/lang/String;[BI)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prk",
            "info",
            "infoLabel",
            "suiteId",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    invoke-static {p3, p2, p4, p5}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelInfo(Ljava/lang/String;[B[BI)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->expand([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public labeledExtract([B[BLjava/lang/String;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm",
            "ikmLabel",
            "suiteId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    invoke-static {p3, p2, p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelIkm(Ljava/lang/String;[B[B)[B

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->extract([B[B)[B

    move-result-object p1

    return-object p1
.end method
