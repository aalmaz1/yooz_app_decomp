.class public final synthetic Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createKeyFromRandomness(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/mac/HmacKeyManager;->createHmacKeyFromRandomness(Lcom/google/crypto/tink/mac/HmacParameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/mac/HmacKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
