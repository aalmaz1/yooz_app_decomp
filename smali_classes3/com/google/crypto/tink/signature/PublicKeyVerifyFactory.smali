.class public final Lcom/google/crypto/tink/signature/PublicKeyVerifyFactory;
.super Ljava/lang/Object;
.source "PublicKeyVerifyFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrimitive(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keysetHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;->register()V

    .line 50
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/PublicKeyVerify;

    return-object p0
.end method
