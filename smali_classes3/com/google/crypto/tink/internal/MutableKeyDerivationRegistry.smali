.class public final Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;
.super Ljava/lang/Object;
.source "MutableKeyDerivationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    }
.end annotation


# static fields
.field private static final globalInstance:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;


# instance fields
.field private final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/crypto/tink/Parameters;",
            ">;",
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "+",
            "Lcom/google/crypto/tink/Parameters;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized createKeyFromRandomnessTyped(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 3
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
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            ">(TParametersT;",
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

    const-string v0, "Cannot use key derivation to derive key for parameters "

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;->createKeyFromRandomness(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 101
    :cond_0
    :try_start_1
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": no key creator for this class was registered."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "creator",
            "parametersClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            ">(",
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "TParametersT;>;",
            "Ljava/lang/Class<",
            "TParametersT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Different key creator for parameters class already inserted"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->creators:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createKeyFromRandomness(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->createKeyFromRandomnessTyped(Lcom/google/crypto/tink/Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    return-object p1
.end method
