.class Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;
.super Ljava/lang/Object;
.source "JwtPublicKeyVerifyWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedJwtPublicKeyVerify"
.end annotation


# instance fields
.field private final logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    .line 47
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;

    move-result-object v0

    .line 49
    invoke-static {p1}, Lcom/google/crypto/tink/internal/MonitoringUtil;->getMonitoringKeysetInfo(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;

    move-result-object p1

    const-string v1, "jwtverify"

    const-string v2, "verify"

    .line 50
    invoke-interface {v0, p1, v1, v2}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    :goto_0
    return-void
.end method


# virtual methods
.method public verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compact",
            "validator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 63
    :try_start_0
    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    invoke-interface {v4, p1, p2}, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;->verifyAndDecode(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtValidator;)Lcom/google/crypto/tink/jwt/VerifiedJwt;

    move-result-object v4

    .line 64
    iget-object v5, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v3

    const-wide/16 v6, 0x1

    invoke-interface {v5, v3, v6, v7}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    .line 67
    instance-of v4, v3, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerifyWrapper$WrappedJwtPublicKeyVerify;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    if-eqz v1, :cond_3

    .line 77
    throw v1

    .line 79
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid JWT"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
