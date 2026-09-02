.class public final synthetic Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->$r8$lambda$-Q7hE9Csi8mYRieTcSGqPr9aIe0(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    return-object p1
.end method
