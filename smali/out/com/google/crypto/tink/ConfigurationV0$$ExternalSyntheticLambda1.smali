.class public final synthetic Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructPrimitive(Lcom/google/crypto/tink/Key;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Ed25519Sign;->create(Lcom/google/crypto/tink/signature/Ed25519PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p1

    return-object p1
.end method
