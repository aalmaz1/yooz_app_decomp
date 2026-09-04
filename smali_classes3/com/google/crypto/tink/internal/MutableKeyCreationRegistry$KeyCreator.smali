.class public interface abstract Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
.super Ljava/lang/Object;
.source "MutableKeyCreationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyCreator"
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
.method public abstract createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParametersT;",
            "Ljava/lang/Integer;",
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
