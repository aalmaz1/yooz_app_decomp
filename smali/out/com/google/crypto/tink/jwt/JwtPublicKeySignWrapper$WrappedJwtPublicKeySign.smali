.class Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;
.super Ljava/lang/Object;
.source "JwtPublicKeySignWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/jwt/JwtPublicKeySign;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedJwtPublicKeySign"
.end annotation


# instance fields
.field private final logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primary:Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

.field private final primaryKeyId:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->primary:Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 52
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->primaryKeyId:I

    .line 53
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;

    move-result-object v0

    .line 55
    invoke-static {p1}, Lcom/google/crypto/tink/internal/MonitoringUtil;->getMonitoringKeysetInfo(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;

    move-result-object p1

    const-string v1, "jwtsign"

    const-string v2, "sign"

    .line 56
    invoke-interface {v0, p1, v1, v2}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    goto :goto_3a

    .line 58
    :cond_36
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    :goto_3a
    return-void
.end method


# virtual methods
.method public signAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->primary:Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;->signAndEncode(Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->primaryKeyId:I

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_f
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception p1

    .line 69
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;->logger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {v0}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 70
    throw p1
.end method
