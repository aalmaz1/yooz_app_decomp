.class public final synthetic Lcom/google/crypto/tink/streamingaead/internal/AesGcmHkdfStreamingProtoSerialization$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    invoke-static {p1}, Lcom/google/crypto/tink/streamingaead/internal/AesGcmHkdfStreamingProtoSerialization;->$r8$lambda$xnHqVABZAiZdCPy00aPKmE9sOFk(Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    return-object p1
.end method
