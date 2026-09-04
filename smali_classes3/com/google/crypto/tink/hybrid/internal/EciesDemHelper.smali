.class public final Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;
.super Ljava/lang/Object;
.source "EciesDemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;,
        Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesCtrHmacDem;,
        Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesGcmDem;,
        Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;
    }
.end annotation


# static fields
.field private static final EMPTY_AAD:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 44
    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;->EMPTY_AAD:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 43
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;->EMPTY_AAD:[B

    return-object v0
.end method

.method public static getDem(Lcom/google/crypto/tink/hybrid/EciesParameters;)Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getDemParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object p0

    .line 246
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesGcmDem;

    check-cast p0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesGcmDem;-><init>(Lcom/google/crypto/tink/aead/AesGcmParameters;)V

    return-object v0

    .line 249
    :cond_0
    instance-of v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    if-eqz v0, :cond_1

    .line 250
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesCtrHmacDem;

    check-cast p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesCtrHmacDem;-><init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)V

    return-object v0

    .line 252
    :cond_1
    instance-of v0, p0, Lcom/google/crypto/tink/daead/AesSivParameters;

    if-eqz v0, :cond_2

    .line 253
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;

    check-cast p0, Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$AesSivDem;-><init>(Lcom/google/crypto/tink/daead/AesSivParameters;)V

    return-object v0

    .line 255
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported DEM parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
