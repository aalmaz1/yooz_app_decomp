.class public final Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;
.super Ljava/lang/Object;
.source "X25519.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/internal/X25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyPair"
.end annotation


# instance fields
.field public final privateKey:[B

.field public final publicKey:[B


# direct methods
.method public constructor <init>([B[B)V
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;->privateKey:[B

    .line 33
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;->publicKey:[B

    return-void
.end method
