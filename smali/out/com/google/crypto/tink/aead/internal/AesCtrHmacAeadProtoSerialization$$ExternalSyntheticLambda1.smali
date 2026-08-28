.class public final synthetic Lcom/google/crypto/tink/aead/internal/AesCtrHmacAeadProtoSerialization$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;
    .registers 2

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/AesCtrHmacAeadProtoSerialization;->$r8$lambda$6H2HqSWWIKux0joSTMFa0QS0G2s(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Parameters;

    return-object p1
.end method
