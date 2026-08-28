.class public abstract Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
.super Lcom/google/crypto/tink/Key;
.source "JwtSignaturePublicKey.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKid()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
.end method
