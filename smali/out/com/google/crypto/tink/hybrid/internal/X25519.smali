.class public interface abstract Lcom/google/crypto/tink/hybrid/internal/X25519;
.super Ljava/lang/Object;
.source "X25519.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;
    }
.end annotation


# virtual methods
.method public abstract computeSharedSecret([B[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateValue",
            "peersPublicValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract generateKeyPair()Lcom/google/crypto/tink/hybrid/internal/X25519$KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
