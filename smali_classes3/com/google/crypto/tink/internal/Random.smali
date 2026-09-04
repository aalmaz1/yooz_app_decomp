.class public final Lcom/google/crypto/tink/internal/Random;
.super Ljava/lang/Object;
.source "Random.java"


# static fields
.field private static final localRandom:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/crypto/tink/internal/Random$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/Random$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/security/SecureRandom;
    .locals 1

    .line 24
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->newDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private static create()Ljava/security/SecureRandom;
    .locals 2

    .line 36
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {v1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerWithReflectionOrNull()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    :try_start_1
    invoke-static {v1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 53
    :catch_1
    :cond_1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private static newDefaultSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->create()Ljava/security/SecureRandom;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method

.method public static randBytes(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 64
    new-array p0, p0, [B

    .line 65
    sget-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static final randInt()I
    .locals 1

    .line 74
    sget-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method public static final randInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "max"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static final validateUsesConscrypt()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/google/crypto/tink/internal/Random;->localRandom:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/ConscryptUtil;->isConscryptProvider(Ljava/security/Provider;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requires GmsCore_OpenSSL, AndroidOpenSSL or Conscrypt to generate randomness, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
