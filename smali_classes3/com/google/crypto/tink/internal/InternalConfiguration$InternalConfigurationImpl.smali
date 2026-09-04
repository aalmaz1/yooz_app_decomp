.class Lcom/google/crypto/tink/internal/InternalConfiguration$InternalConfigurationImpl;
.super Lcom/google/crypto/tink/internal/InternalConfiguration;
.source "InternalConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/InternalConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalConfigurationImpl"
.end annotation


# instance fields
.field private final registry:Lcom/google/crypto/tink/internal/PrimitiveRegistry;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/google/crypto/tink/internal/InternalConfiguration;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/crypto/tink/internal/InternalConfiguration$InternalConfigurationImpl;->registry:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;Lcom/google/crypto/tink/internal/InternalConfiguration$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/InternalConfiguration$InternalConfigurationImpl;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V

    return-void
.end method


# virtual methods
.method public getInputPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapperClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/crypto/tink/internal/InternalConfiguration$InternalConfigurationImpl;->registry:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getInputPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getLegacyPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyData",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/proto/KeyData;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/Key;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/internal/InternalConfiguration$InternalConfigurationImpl;->registry:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primitiveSet",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "TB;>;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/internal/InternalConfiguration$InternalConfigurationImpl;->registry:Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->wrap(Lcom/google/crypto/tink/internal/PrimitiveSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
