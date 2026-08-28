.class final Lcom/google/crypto/tink/signature/RsaSsaPkcs1VerifyKeyManager;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1VerifyKeyManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey"

    return-object v0
.end method
