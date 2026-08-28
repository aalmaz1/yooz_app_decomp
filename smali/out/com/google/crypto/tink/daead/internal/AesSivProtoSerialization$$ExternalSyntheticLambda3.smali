.class public final synthetic Lcom/google/crypto/tink/daead/internal/AesSivProtoSerialization$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .registers 3

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/daead/internal/AesSivProtoSerialization;->$r8$lambda$MoQxf_1ROP0LS8qMMBncLssCtWI(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/daead/AesSivKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
