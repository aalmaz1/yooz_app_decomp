.class Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;
.super Ljava/lang/Object;
.source "MacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/Mac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/MacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedMac"
.end annotation


# instance fields
.field private final computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private final verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
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
            "Lcom/google/crypto/tink/Mac;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    .line 59
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;

    move-result-object v0

    .line 61
    invoke-static {p1}, Lcom/google/crypto/tink/internal/MonitoringUtil;->getMonitoringKeysetInfo(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;

    move-result-object p1

    const-string v1, "compute"

    const-string v2, "mac"

    .line 62
    invoke-interface {v0, p1, v2, v1}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    const-string v1, "verify"

    .line 63
    invoke-interface {v0, p1, v2, v1}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    goto :goto_0

    .line 65
    :cond_0
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 66
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iput-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;Lcom/google/crypto/tink/mac/MacWrapper$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;-><init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V

    return-void
.end method


# virtual methods
.method public computeMac([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/Mac;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v2

    array-length p1, p1

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->computeLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {v0}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 78
    throw p1
.end method

.method public verifyMac([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mac",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 90
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 94
    :try_start_0
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/Mac;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    .line 95
    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v1

    array-length v3, p2

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->primitives:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 107
    :try_start_1
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/Mac;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    .line 108
    iget-object v2, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v1

    array-length v3, p2

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 117
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/google/crypto/tink/mac/MacWrapper$WrappedMac;->verifyLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 88
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
