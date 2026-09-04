.class public final Lcom/google/crypto/tink/mac/MacFactory;
.super Ljava/lang/Object;
.source "MacFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrimitive(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/Mac;
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

    .line 51
    invoke-static {}, Lcom/google/crypto/tink/mac/MacWrapper;->register()V

    .line 52
    invoke-static {}, Lcom/google/crypto/tink/RegistryConfiguration;->get()Lcom/google/crypto/tink/Configuration;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/Mac;

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Lcom/google/crypto/tink/Configuration;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/Mac;

    return-object p0
.end method
