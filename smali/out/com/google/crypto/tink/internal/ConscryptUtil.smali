.class public final Lcom/google/crypto/tink/internal/ConscryptUtil;
.super Ljava/lang/Object;
.source "ConscryptUtil.java"


# static fields
.field private static final CONSCRYPT_PROVIDER_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "AndroidOpenSSL"

    const-string v1, "Conscrypt"

    const-string v2, "GmsCore_OpenSSL"

    .line 28
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/internal/ConscryptUtil;->CONSCRYPT_PROVIDER_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isConscryptProvider(Ljava/security/Provider;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GmsCore_OpenSSL"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "AndroidOpenSSL"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "Conscrypt"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public static providerOrNull()Ljava/security/Provider;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 33
    sget-object v0, Lcom/google/crypto/tink/internal/ConscryptUtil;->CONSCRYPT_PROVIDER_NAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 34
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static providerWithReflectionOrNull()Ljava/security/Provider;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "org.conscrypt.Conscrypt"

    .line 52
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "newProvider"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 53
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v1

    :catch_19
    return-object v0
.end method
