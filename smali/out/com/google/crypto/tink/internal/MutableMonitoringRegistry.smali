.class public final Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
.super Ljava/lang/Object;
.source "MutableMonitoringRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;
    }
.end annotation


# static fields
.field private static final DO_NOTHING_CLIENT:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

.field private static final GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;


# instance fields
.field private final monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/crypto/tink/internal/MonitoringClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    .line 39
    new-instance v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;-><init>(Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$1;)V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->DO_NOTHING_CLIENT:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;
    .registers 1

    .line 29
    sget-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 45
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMonitoringClient()Lcom/google/crypto/tink/internal/MonitoringClient;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/MonitoringClient;

    if-nez v0, :cond_c

    .line 57
    sget-object v0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->DO_NOTHING_CLIENT:Lcom/google/crypto/tink/internal/MutableMonitoringRegistry$DoNothingClient;

    :cond_c
    return-object v0
.end method

.method public declared-synchronized registerMonitoringClient(Lcom/google/crypto/tink/internal/MonitoringClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableMonitoringRegistry;->monitoringClient:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 52
    monitor-exit p0

    return-void

    .line 49
    :cond_10
    :try_start_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "a monitoring client has already been registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
