.class public final synthetic Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->$r8$lambda$wzlJvjUERLVKX274klqS96hzvJs(Lcom/google/crypto/tink/internal/LegacyProtoParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/LegacyProtoKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
