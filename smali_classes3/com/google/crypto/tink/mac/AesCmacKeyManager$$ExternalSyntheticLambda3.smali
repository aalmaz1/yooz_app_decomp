.class public final synthetic Lcom/google/crypto/tink/mac/AesCmacKeyManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructPrimitive(Lcom/google/crypto/tink/Key;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/mac/AesCmacKey;

    invoke-static {p1}, Lcom/google/crypto/tink/mac/AesCmacKeyManager;->$r8$lambda$p51Nv6tnpGayGkjUyf63xRLTaO4(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/mac/ChunkedMac;

    move-result-object p1

    return-object p1
.end method
