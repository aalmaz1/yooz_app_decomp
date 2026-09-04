.class public final synthetic Lcom/google/crypto/tink/daead/internal/AesSivProtoSerialization$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializeParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-static {p1}, Lcom/google/crypto/tink/daead/internal/AesSivProtoSerialization;->$r8$lambda$ZpV4zu86iKDCM1Q_OZMhZbK2bzw(Lcom/google/crypto/tink/daead/AesSivParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    return-object p1
.end method
