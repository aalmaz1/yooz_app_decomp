.class Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;
.super Ljava/lang/Object;
.source "AeadWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AeadWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedAead"
.end annotation


# instance fields
.field private final decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

.field private final pSet:Lcom/google/crypto/tink/internal/PrimitiveSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/Aead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/internal/PrimitiveSet<",
            "Lcom/google/crypto/tink/Aead;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->pSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    .line 58
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 59
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;

    move-result-object v0

    .line 60
    invoke-static {p1}, Lcom/google/crypto/tink/internal/MonitoringUtil;->getMonitoringKeysetInfo(Lcom/google/crypto/tink/internal/PrimitiveSet;)Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;

    move-result-object p1

    const-string v1, "encrypt"

    const-string v2, "aead"

    .line 61
    invoke-interface {v0, p1, v2, v1}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    const-string v1, "decrypt"

    .line 62
    invoke-interface {v0, p1, v2, v1}, Lcom/google/crypto/tink/internal/MonitoringClient;->createLogger(Lcom/google/crypto/tink/internal/MonitoringKeysetInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    goto :goto_32

    .line 64
    :cond_2a
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    .line 65
    sget-object p1, Lcom/google/crypto/tink/internal/MonitoringUtil;->DO_NOTHING_LOGGER:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    :goto_32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveSet;Lcom/google/crypto/tink/aead/AeadWrapper$1;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;-><init>(Lcom/google/crypto/tink/internal/PrimitiveSet;)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_34

    .line 86
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->pSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimitive([B)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 90
    :try_start_1e
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/Aead;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v1

    array-length v4, p1

    int-to-long v4, v4

    invoke-interface {v3, v1, v4, v5}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_33
    .catch Ljava/security/GeneralSecurityException; {:try_start_1e .. :try_end_33} :catch_12

    return-object v2

    .line 100
    :cond_34
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->pSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getRawPrimitives()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    .line 103
    :try_start_4a
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/Aead;

    invoke-interface {v2, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v1

    array-length v4, p1

    int-to-long v4, v4

    invoke-interface {v3, v1, v4, v5}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_5f
    .catch Ljava/security/GeneralSecurityException; {:try_start_4a .. :try_end_5f} :catch_3e

    return-object v2

    .line 110
    :cond_60
    iget-object p1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->decLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p1}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 112
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "decryption failed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->pSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getFullPrimitive()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object p2

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->pSet:Lcom/google/crypto/tink/internal/PrimitiveSet;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveSet$Entry;->getKeyId()I

    move-result v1

    array-length p1, p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->log(IJ)V
    :try_end_21
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_21} :catch_22

    return-object p2

    :catch_22
    move-exception p1

    .line 77
    iget-object p2, p0, Lcom/google/crypto/tink/aead/AeadWrapper$WrappedAead;->encLogger:Lcom/google/crypto/tink/internal/MonitoringClient$Logger;

    invoke-interface {p2}, Lcom/google/crypto/tink/internal/MonitoringClient$Logger;->logFailure()V

    .line 78
    throw p1
.end method
