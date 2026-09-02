.class public abstract Lcom/google/crypto/tink/keyderivation/KeyDerivationParameters;
.super Lcom/google/crypto/tink/Parameters;
.source "KeyDerivationParameters.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/google/crypto/tink/Parameters;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;
.end method

.method public hasIdRequirement()Z
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/KeyDerivationParameters;->getDerivedKeyParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/Parameters;->hasIdRequirement()Z

    move-result v0

    return v0
.end method
