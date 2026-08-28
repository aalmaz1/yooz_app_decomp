.class public final synthetic Lcom/google/crypto/tink/hybrid/internal/EciesProtoSerialization$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializeKey(Lcom/google/crypto/tink/Key;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;
    .registers 3

    check-cast p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/hybrid/internal/EciesProtoSerialization;->$r8$lambda$0Z80GoABvRMzD__VOGSVSueQCi0(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p1

    return-object p1
.end method
