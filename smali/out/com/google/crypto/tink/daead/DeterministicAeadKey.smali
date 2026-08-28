.class public abstract Lcom/google/crypto/tink/daead/DeterministicAeadKey;
.super Lcom/google/crypto/tink/Key;
.source "DeterministicAeadKey.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 23
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/DeterministicAeadKey;->getParameters()Lcom/google/crypto/tink/daead/DeterministicAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Lcom/google/crypto/tink/daead/DeterministicAeadParameters;
.end method
