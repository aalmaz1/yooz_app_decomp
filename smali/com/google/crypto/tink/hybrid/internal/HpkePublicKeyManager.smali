.class public final Lcom/google/crypto/tink/hybrid/internal/HpkePublicKeyManager;
.super Ljava/lang/Object;
.source "HpkePublicKeyManager.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    return-object v0
.end method
