.class public final synthetic Lcom/google/crypto/tink/mac/AesCmacKeyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/crypto/tink/mac/AesCmacKeyManager;->lambda$rawAes256CmacTemplate$1()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method
