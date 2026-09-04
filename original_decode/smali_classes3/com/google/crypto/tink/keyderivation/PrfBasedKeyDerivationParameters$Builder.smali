.class public Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;
.super Ljava/lang/Object;
.source "PrfBasedKeyDerivationParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private derivedKeyParameters:Lcom/google/crypto/tink/Parameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    .line 34
    iput-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    iget-object v2, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;-><init>(Lcom/google/crypto/tink/prf/PrfParameters;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$1;)V

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "DerivedKeyParameters must be set."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "PrfParameters must be set."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDerivedKeyParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "derivedKeyParameters"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->derivedKeyParameters:Lcom/google/crypto/tink/Parameters;

    return-object p0
.end method

.method public setPrfParameters(Lcom/google/crypto/tink/prf/PrfParameters;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prfParameters"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters$Builder;->prfParameters:Lcom/google/crypto/tink/prf/PrfParameters;

    return-object p0
.end method
