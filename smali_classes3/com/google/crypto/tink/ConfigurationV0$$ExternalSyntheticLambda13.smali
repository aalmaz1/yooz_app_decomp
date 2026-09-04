.class public final synthetic Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda13;
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

    check-cast p1, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->create(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;)Lcom/google/crypto/tink/StreamingAead;

    move-result-object p1

    return-object p1
.end method
