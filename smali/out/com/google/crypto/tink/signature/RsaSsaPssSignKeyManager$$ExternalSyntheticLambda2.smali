.class public final synthetic Lcom/google/crypto/tink/signature/RsaSsaPssSignKeyManager$$ExternalSyntheticLambda2;
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

    check-cast p1, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/signature/RsaSsaPssSignKeyManager;->$r8$lambda$BN1jMlh5koF_gu-F5OtLmg6fm8s(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
