.class public final Lcom/google/crypto/tink/internal/KeyManagerRegistry;
.super Ljava/lang/Object;
.source "KeyManagerRegistry.java"


# static fields
.field private static final GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/KeyManagerRegistry;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private keyManagerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/KeyManager<",
            "*>;>;"
        }
    .end annotation
.end field

.field private newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->logger:Ljava/util/logging/Logger;

    .line 44
    new-instance v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/KeyManagerRegistry;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "original"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private declared-synchronized getKeyManagerOrThrow(Ljava/lang/String;)Lcom/google/crypto/tink/KeyManager;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/KeyManager<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "No key manager found for key type "

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 70
    :cond_0
    :try_start_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    return-object v0
.end method

.method private declared-synchronized insertKeyManager(Lcom/google/crypto/tink/KeyManager;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "manager",
            "forceOverwrite",
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeyManager<",
            "*>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "New keys are already disallowed for key type "

    const-string v1, "Attempted overwrite of a registered key manager for key type "

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-interface {p1}, Lcom/google/crypto/tink/KeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyManager;

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    sget-object p2, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 85
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string p3, "typeUrl (%s) is already registered with %s, cannot be re-registered with %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v1, v0

    .line 86
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 91
    iget-object p2, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 93
    :cond_4
    iget-object p2, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_2
    iget-object p1, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static resetGlobalInstanceTestOnly()V
    .locals 2

    .line 53
    sget-object v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getKeyManager(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/crypto/tink/KeyManager;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeUrl",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lcom/google/crypto/tink/KeyManager<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->getKeyManagerOrThrow(Ljava/lang/String;)Lcom/google/crypto/tink/KeyManager;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Lcom/google/crypto/tink/KeyManager;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 136
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Primitive type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " not supported by key manager of type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", which only supports: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 142
    invoke-interface {p1}, Lcom/google/crypto/tink/KeyManager;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUntypedKeyManager(Ljava/lang/String;)Lcom/google/crypto/tink/KeyManager;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/crypto/tink/KeyManager<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->getKeyManagerOrThrow(Ljava/lang/String;)Lcom/google/crypto/tink/KeyManager;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isNewKeyAllowed(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->newKeyAllowedMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public declared-synchronized registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "manager",
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/KeyManager<",
            "TP;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "manager",
            "compatibility",
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/KeyManager<",
            "TP;>;",
            "Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p2}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->insertKeyManager(Lcom/google/crypto/tink/KeyManager;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Cannot register key manager: FIPS compatibility insufficient"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restrictToFipsIfEmptyAndGlobalInstance()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    if-ne p0, v0, :cond_2

    .line 173
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 174
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->setFipsRestricted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :try_start_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not enable FIPS mode as Registry is not empty."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Only the global instance can be restricted to FIPS."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public typeUrlExists(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->keyManagerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
