.class final Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;
.super Ljava/lang/Object;
.source "EciesDemHelper.java"

# interfaces
.implements Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AesSivDem"
.end annotation


# instance fields
.field private final keySizeInBytes:I

.field private final parameters:Lcom/google/crypto/tink/daead/AesSivParameters;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/daead/AesSivParameters;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    .line 202
    invoke-virtual {p1}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;->keySizeInBytes:I

    return-void
.end method

.method private getDaead([B)Lcom/google/crypto/tink/DeterministicAead;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "symmetricKeyValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/google/crypto/tink/daead/AesSivKey;->builder()Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->build()Lcom/google/crypto/tink/daead/AesSivKey;

    move-result-object p1

    .line 212
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/AesSiv;->create(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt([B[BI)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "demKeyValue",
            "ciphertext",
            "prefixAndHeaderSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 229
    array-length v0, p2

    if-lt v0, p3, :cond_15

    .line 232
    array-length v0, p2

    invoke-static {p2, p3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 233
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;->getDaead([B)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;->access$000()[B

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    move-result-object p1

    return-object p1

    .line 230
    :cond_15
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "demKeyValue",
            "prefix",
            "header",
            "plaintext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;->getDaead([B)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;->access$000()[B

    move-result-object v0

    invoke-interface {p1, p4, v0}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    move-result-object p1

    const/4 p4, 0x3

    new-array p4, p4, [[B

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const/4 p2, 0x1

    aput-object p3, p4, p2

    const/4 p2, 0x2

    aput-object p1, p4, p2

    .line 223
    invoke-static {p4}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getSymmetricKeySizeInBytes()I
    .registers 2

    .line 207
    iget v0, p0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;->keySizeInBytes:I

    return v0
.end method
