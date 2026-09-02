.class Lcom/google/crypto/tink/signature/RsaSsaPssVerifyKeyManager;
.super Ljava/lang/Object;
.source "RsaSsaPssVerifyKeyManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPssPublicKey"

    return-object v0
.end method
