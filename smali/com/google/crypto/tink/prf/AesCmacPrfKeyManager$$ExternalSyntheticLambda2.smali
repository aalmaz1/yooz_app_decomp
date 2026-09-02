.class public final synthetic Lcom/google/crypto/tink/prf/AesCmacPrfKeyManager$$ExternalSyntheticLambda2;
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

    check-cast p1, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/prf/AesCmacPrfKeyManager;->$r8$lambda$iPmzwLJPqXfm0kf1p5tvIC6B9sE(Lcom/google/crypto/tink/prf/AesCmacPrfParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
