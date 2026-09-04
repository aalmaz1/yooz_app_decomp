.class final Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$X25519Java;
.super Ljava/lang/Object;
.source "X25519HpkeKem.java"

# interfaces
.implements Lcom/google/crypto/tink/hybrid/internal/X25519;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X25519Java"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem$X25519Java;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSharedSecret([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    invoke-static {p1, p2}, Lcom/google/crypto/tink/subtle/X25519;->computeSharedSecret([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public generateKeyPair()Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/google/crypto/tink/subtle/X25519;->generatePrivateKey()[B

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/X25519;->publicFromPrivate([B)[B

    move-result-object v1

    .line 45
    new-instance v2, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;

    invoke-direct {v2, v0, v1}, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;-><init>([B[B)V

    return-object v2
.end method
