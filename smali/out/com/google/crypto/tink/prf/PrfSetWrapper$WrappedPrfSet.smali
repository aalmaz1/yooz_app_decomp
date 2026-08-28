.class Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet;
.super Lcom/google/crypto/tink/prf/PrfSet;
.source "PrfSetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/prf/PrfSetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPrfSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet$PrfWithMonitoring;
    }
.end annotation


# instance fields
.field private final keyIdToPrfMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/crypto/tink/prf/Prf;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryKeyId:I


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
    .registers 8
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
            "Lcom/google/crypto/tink/prf/Prf;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/google/crypto/tink/prf/PrfSet;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 88
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 92
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 93
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/google/crypto/tink/internal/MonitoringUtil;->getMonitoringKeysetInfo(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;

    move-result-object v1

    const-string v2, "prf"

    const-string v3, "compute"

    .line 95
    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object v0

    goto :goto_30

    .line 97
    :cond_2e
    sget-object v0, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 100
    :goto_30
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v1

    iput v1, p0, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet;->primaryKeyId:I

    .line 101
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object p1

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 106
    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet$PrfWithMonitoring;

    .line 107
    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/prf/Prf;

    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v2

    invoke-direct {v4, v5, v2, v0}, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet$PrfWithMonitoring;-><init>(Lcom/google/crypto/tink/prf/Prf;ILcom/google/crypto/tink/internal/MonitoringClient$Logger;)V

    .line 105
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    .line 109
    :cond_6e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet;->keyIdToPrfMap:Ljava/util/Map;

    return-void

    .line 89
    :cond_75
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Primary key not set."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_7d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "No primitives provided."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;Lcom/google/crypto/tink/prf/PrfSetWrapper$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet;-><init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V

    return-void
.end method


# virtual methods
.method public getPrfs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/crypto/tink/prf/Prf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet;->keyIdToPrfMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPrimaryId()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/google/crypto/tink/prf/PrfSetWrapper$WrappedPrfSet;->primaryKeyId:I

    return v0
.end method
