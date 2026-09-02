.class public final Lcom/google/crypto/tink/jwt/JwtMacConfig;
.super Ljava/lang/Object;
.source "JwtMacConfig.java"


# static fields
.field public static final JWT_HMAC_TYPE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtMacConfig;->JWT_HMAC_TYPE_URL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->register(Z)V

    .line 43
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtMacWrapper;->register()V

    return-void
.end method
