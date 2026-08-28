.class public interface abstract Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
.super Ljava/lang/Object;
.source "MutableKeyDerivationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InsecureKeyCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParametersT:",
        "Lcom/google/crypto/tink/Parameters;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createKeyFromRandomness(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "inputStream",
            "idRequirement",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParametersT;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Integer;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
