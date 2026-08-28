.class public final Lcom/google/crypto/tink/config/internal/TinkFipsUtil;
.super Ljava/lang/Object;
.source "TinkFipsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;
    }
.end annotation


# static fields
.field private static final isRestrictedToFips:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    const-class v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->logger:Ljava/util/logging/Logger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->isRestrictedToFips:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkConscryptIsAvailableAndUsesFipsBoringSsl()Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "org.conscrypt.Conscrypt"

    .line 84
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isBoringSslFIPSBuild"

    new-array v3, v0, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    return-object v1

    .line 90
    :catch_19
    sget-object v1, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->logger:Ljava/util/logging/Logger;

    const-string v2, "Conscrypt is not available or does not support checking for FIPS build."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static fipsModuleAvailable()Z
    .registers 1

    .line 79
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->checkConscryptIsAvailableAndUsesFipsBoringSsl()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setFipsRestricted()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->checkConscryptIsAvailableAndUsesFipsBoringSsl()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->validateUsesConscrypt()V

    .line 64
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->isRestrictedToFips:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 60
    :cond_14
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Conscrypt is not available or does not support checking for FIPS build."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unsetFipsRestricted()V
    .registers 2

    .line 71
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->isRestrictedToFips:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static useOnlyFips()Z
    .registers 1

    .line 75
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsStatus;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->isRestrictedToFips:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
