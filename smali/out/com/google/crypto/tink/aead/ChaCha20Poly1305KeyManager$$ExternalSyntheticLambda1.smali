.class public final synthetic Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .registers 3

    check-cast p1, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->createChaChaKey(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
