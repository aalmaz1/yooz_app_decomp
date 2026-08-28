.class Lcom/google/crypto/tink/signature/Ed25519PublicKeyManager;
.super Ljava/lang/Object;
.source "Ed25519PublicKeyManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.Ed25519PublicKey"

    return-object v0
.end method
