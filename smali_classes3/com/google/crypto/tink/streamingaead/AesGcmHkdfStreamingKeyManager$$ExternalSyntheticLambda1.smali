.class public final synthetic Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKeyManager$$ExternalSyntheticLambda1;
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

    check-cast p1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    invoke-static {p1, p2, p3, p4}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKeyManager;->createAesGcmHkdfStreamingKeyFromRandomness(Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
