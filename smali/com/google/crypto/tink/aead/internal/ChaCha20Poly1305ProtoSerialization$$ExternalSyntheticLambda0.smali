.class public final synthetic Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305ProtoSerialization$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializeParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/internal/Serialization;
    .registers 2

    check-cast p1, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305ProtoSerialization;->$r8$lambda$62W60LDTIEUX324O6xrWrQYwP2k(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    return-object p1
.end method
