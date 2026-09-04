.class Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;
.super Ljava/lang/Object;
.source "EciesAeadHkdfPublicKeyManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    return-object v0
.end method
