.class public final Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;
.super Ljava/lang/Object;
.source "PrfBasedKeyDeriver.java"

# interfaces
.implements Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field final key:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

.field final prf:Lcom/google/crypto/tink/subtle/prf/StreamingPrf;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/subtle/prf/StreamingPrf;Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prf",
            "key"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;->prf:Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    .line 41
    iput-object p2, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;->key:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;)Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;
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

    .line 47
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getPrfKey()Lcom/google/crypto/tink/prf/PrfKey;

    move-result-object v1

    const-class v2, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    .line 48
    new-instance v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;

    invoke-direct {v1, v0, p0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;-><init>(Lcom/google/crypto/tink/subtle/prf/StreamingPrf;Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;)V

    const/4 p0, 0x1

    new-array v0, p0, [B

    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;->deriveKey([B)Lcom/google/crypto/tink/Key;

    return-object v1
.end method


# virtual methods
.method public deriveKey([B)Lcom/google/crypto/tink/Key;
    .registers 6
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

    .line 56
    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;->prf:Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/subtle/prf/StreamingPrf;->computePrf([B)Ljava/io/InputStream;

    move-result-object p1

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;->key:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    .line 59
    invoke-virtual {v1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getParameters()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDeriver;->key:Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    .line 61
    invoke-virtual {v2}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v2

    .line 62
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->createKeyFromRandomness(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    return-object p1
.end method
