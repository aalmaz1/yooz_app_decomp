.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Trusted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field static final log:Lcom/google/common/util/concurrent/LazyLogger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile value:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 86
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 v0, 0x0

    .line 90
    :goto_e
    sput-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 143
    new-instance v0, Lcom/google/common/util/concurrent/LazyLogger;

    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/LazyLogger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->log:Lcom/google/common/util/concurrent/LazyLogger;

    const/4 v0, 0x0

    .line 157
    :try_start_1a
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_24
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1f} :catch_22

    move-object v3, v2

    move-object v2, v0

    goto :goto_62

    :catch_22
    move-exception v2

    goto :goto_25

    :catch_24
    move-exception v2

    .line 164
    :goto_25
    :try_start_25
    new-instance v9, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v4, Ljava/lang/Thread;

    const-string v5, "thread"

    .line 166
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v6, "next"

    .line 167
    invoke-static {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v6, "waiters"

    .line 168
    invoke-static {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    const-string v7, "listeners"

    .line 169
    invoke-static {v1, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v3, Ljava/lang/Object;

    const-string v8, "value"

    .line 170
    invoke-static {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_57} :catch_5b
    .catch Ljava/lang/Error; {:try_start_25 .. :try_end_57} :catch_59

    move-object v3, v9

    goto :goto_62

    :catch_59
    move-exception v1

    goto :goto_5c

    :catch_5b
    move-exception v1

    .line 178
    :goto_5c
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    move-object v0, v1

    .line 181
    :goto_62
    sput-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 186
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v0, :cond_80

    .line 191
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    .line 193
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    :cond_80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 397
    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .registers 1

    .line 74
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 1

    .line 74
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/AbstractFuture;Z)V
    .registers 2

    .line 74
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const-string v0, "]"

    .line 1238
    :try_start_2
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 1239
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->appendResultObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1241
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_11} :catch_2d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_11} :catch_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_3f

    :catch_12
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 1247
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_27
    const-string v0, "CANCELLED"

    .line 1245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :catch_2d
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 1243
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    return-void
.end method

.method private addPendingString(Ljava/lang/StringBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 1201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "PENDING"

    .line 1203
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1206
    instance-of v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    const-string v3, "]"

    if-eqz v2, :cond_21

    const-string v2, ", setFuture=["

    .line 1207
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->appendUserObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1209
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 1213
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_2c
    .catch Ljava/lang/StackOverflowError; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_40

    :catch_2a
    move-exception v1

    goto :goto_2d

    :catch_2c
    move-exception v1

    .line 1219
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception thrown from implementation: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_40
    if-eqz v1, :cond_4f

    const-string v2, ", info=["

    .line 1222
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1231
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    :cond_5f
    return-void
.end method

.method private appendResultObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "o"
        }
    .end annotation

    if-nez p2, :cond_8

    const-string p2, "null"

    .line 1258
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_8
    if-ne p2, p0, :cond_10

    const-string p2, "this future"

    .line 1260
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1263
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "@"

    .line 1264
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1265
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    return-void
.end method

.method private appendUserObject(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "o"
        }
    .end annotation

    if-ne p2, p0, :cond_8

    :try_start_2
    const-string p2, "this future"

    .line 1278
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1280
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1c

    :catch_c
    move-exception p2

    goto :goto_f

    :catch_e
    move-exception p2

    :goto_f
    const-string v0, "Exception thrown from implementation: "

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1c
    return-void
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 1590
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .registers 5
    .param p1    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onto"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1148
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->gasListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_b
    if-eqz p1, :cond_14

    .line 1152
    iget-object v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1153
    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-object v0, p1

    move-object p1, v1

    goto :goto_b

    :cond_14
    return-object v0
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "callInterruptTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1009
    :goto_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    if-eqz p1, :cond_a

    .line 1015
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    const/4 p1, 0x0

    .line 1027
    :cond_a
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 1029
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object p0

    :goto_11
    if-eqz p0, :cond_45

    .line 1033
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1038
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1039
    instance-of v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v2, :cond_38

    .line 1040
    check-cast v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 1046
    iget-object p0, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 1047
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v2, v1, :cond_43

    .line 1048
    iget-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v2

    .line 1049
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_1

    .line 1059
    :cond_38
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_43
    move-object p0, v0

    goto :goto_11

    :cond_45
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runnable",
            "executor"
        }
    .end annotation

    .line 1298
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_29

    :catch_4
    move-exception v0

    .line 1303
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException while executing runnable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " with executor "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1304
    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_29
    return-void
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 591
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-nez v0, :cond_1b

    .line 593
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-nez v0, :cond_11

    .line 595
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_10

    .line 600
    invoke-static {}, Lcom/google/common/util/concurrent/NullnessCasts;->uncheckedNull()Ljava/lang/Object;

    move-result-object p1

    :cond_10
    return-object p1

    .line 594
    :cond_11
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object p1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 592
    :cond_1b
    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-object p1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 904
    instance-of v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 909
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 910
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v0, :cond_24

    .line 914
    move-object v0, p0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 915
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_24

    .line 917
    iget-object p0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz p0, :cond_22

    .line 918
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_24

    .line 919
    :cond_22
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 923
    :cond_24
    :goto_24
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 925
    :cond_29
    instance-of v1, p0, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    if-eqz v1, :cond_3c

    .line 926
    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 927
    invoke-static {v1}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 929
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 932
    :cond_3c
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    .line 934
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4e

    .line 939
    sget-object p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 943
    :cond_4e
    :try_start_4e
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_6c

    .line 945
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_6c
    if-nez v3, :cond_70

    .line 952
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_70
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4e .. :try_end_70} :catch_9d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4e .. :try_end_70} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_70} :catch_73
    .catch Ljava/lang/Error; {:try_start_4e .. :try_end_70} :catch_71

    :cond_70
    return-object v3

    :catch_71
    move-exception p0

    goto :goto_74

    :catch_73
    move-exception p0

    .line 974
    :goto_74
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_7a
    move-exception v0

    if-nez v1, :cond_97

    .line 966
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 972
    :cond_97
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_9d
    move-exception v3

    if-eqz v1, :cond_b8

    .line 955
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 963
    :cond_b8
    new-instance p0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 989
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 996
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 998
    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private releaseWaiters()V
    .registers 3

    .line 1130
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->gasWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_10

    .line 1132
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 1131
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    goto :goto_8

    :cond_10
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 252
    :goto_3
    iget-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 253
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne p1, v1, :cond_a

    return-void

    :cond_a
    move-object v1, v0

    :goto_b
    if-eqz p1, :cond_29

    .line 258
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 259
    iget-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    move-object v1, p1

    goto :goto_27

    :cond_15
    if-eqz v1, :cond_1e

    .line 262
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 263
    iget-object p1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez p1, :cond_27

    goto :goto_3

    .line 266
    :cond_1e
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3

    :cond_27
    :goto_27
    move-object p1, v2

    goto :goto_b

    :cond_29
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "executor"
        }
    .end annotation

    const-string v0, "Runnable was null."

    .line 736
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 737
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 748
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 749
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-eq v0, v1, :cond_2c

    .line 750
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 752
    :cond_1b
    iput-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 753
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    .line 756
    :cond_26
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 757
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v0, v2, :cond_1b

    .line 762
    :cond_2c
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected afterDone()V
    .registers 1

    return-void
.end method

.method public cancel(Z)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mayInterruptIfRunning"
        }
    .end annotation

    .line 639
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    .line 641
    :goto_9
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v3, v4

    if-eqz v3, :cond_60

    .line 645
    sget-boolean v3, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v3, :cond_1f

    .line 646
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_2a

    :cond_1f
    if-eqz p1, :cond_24

    .line 660
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_26

    .line 661
    :cond_24
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 658
    :goto_26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2a
    move-object v4, p0

    move v5, v2

    .line 664
    :cond_2c
    :goto_2c
    sget-object v6, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v6, v4, v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 666
    invoke-static {v4, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    .line 667
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v4, :cond_61

    .line 670
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 671
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v4, :cond_54

    .line 679
    move-object v4, v0

    check-cast v4, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 680
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-nez v0, :cond_4c

    move v5, v1

    goto :goto_4d

    :cond_4c
    move v5, v2

    .line 681
    :goto_4d
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v5, v6

    if-eqz v5, :cond_61

    move v5, v1

    goto :goto_2c

    .line 687
    :cond_54
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_61

    .line 693
    :cond_58
    iget-object v0, v4, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 694
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_2c

    move v1, v5

    goto :goto_61

    :cond_60
    move v1, v2

    :cond_61
    :goto_61
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 548
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_65

    .line 551
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    .line 552
    :goto_f
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    .line 553
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 555
    :cond_1a
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 556
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v0, v3, :cond_5a

    .line 557
    new-instance v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 559
    :cond_25
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 560
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 563
    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 565
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 571
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    move v4, v2

    goto :goto_40

    :cond_3f
    move v4, v1

    .line 572
    :goto_40
    instance-of v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    .line 573
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 566
    :cond_4b
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 567
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 577
    :cond_54
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 578
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v4, :cond_25

    .line 583
    :cond_5a
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 549
    :cond_65
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 438
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 440
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1c6

    .line 443
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    move v9, v8

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    .line 444
    :goto_18
    instance-of v10, v6, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    .line 445
    invoke-direct {v0, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    .line 448
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_8f

    .line 451
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 452
    sget-object v15, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v6, v15, :cond_84

    .line 453
    new-instance v15, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v15}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 455
    :cond_41
    invoke-virtual {v15, v6}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 456
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 458
    :cond_4c
    invoke-static {v0, v4, v5}, Lcom/google/common/util/concurrent/OverflowAvoidingLockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 460
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_75

    .line 467
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5b

    move v5, v8

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    .line 468
    :goto_5c
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_67

    .line 469
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 473
    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4c

    .line 476
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    goto :goto_8f

    .line 461
    :cond_75
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 462
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 481
    :cond_7e
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 482
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v6, v7, :cond_41

    .line 487
    :cond_84
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8f
    :goto_8f
    cmp-long v6, v4, v9

    if-lez v6, :cond_b8

    .line 492
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-eqz v4, :cond_99

    move v5, v8

    goto :goto_9a

    :cond_99
    const/4 v5, 0x0

    .line 493
    :goto_9a
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_a5

    .line 494
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 496
    :cond_a5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_b2

    .line 499
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_8f

    .line 497
    :cond_b2
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 502
    :cond_b8
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v6

    .line 503
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 504
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Waited "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_18a

    .line 508
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " (plus "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    neg-long v4, v4

    .line 510
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 511
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_11b

    cmp-long v9, v4, v13

    if-lez v9, :cond_118

    goto :goto_11b

    :cond_118
    const/16 v16, 0x0

    goto :goto_11d

    :cond_11b
    :goto_11b
    move/from16 v16, v8

    :goto_11d
    if-lez v3, :cond_15e

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v16, :cond_14d

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    :cond_14d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_15e
    if-eqz v16, :cond_177

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    :cond_177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    :cond_18a
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 531
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    :cond_1a9
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_1c6
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method protected interruptTask()V
    .registers 1

    return-void
.end method

.method public isCancelled()Z
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 617
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return v0
.end method

.method public isDone()Z
    .registers 4

    .line 610
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    .line 611
    :goto_8
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .registers 4
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "related"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1123
    :goto_5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 1124
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_13
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1189
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_23

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining delay=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1191
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 782
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 783
    :cond_4
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 784
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    const/4 p1, 0x1

    return p1

    :cond_13
    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 807
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 808
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 809
    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1a
    return v0
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 846
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    .line 849
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    .line 850
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object p1

    .line 851
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 852
    invoke-static {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    return v2

    :cond_20
    return v1

    .line 863
    :cond_21
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 864
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 868
    :try_start_2e
    sget-object v1, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    goto :goto_42

    :catchall_34
    move-exception p1

    .line 877
    :try_start_35
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Error; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_3d

    .line 879
    :catch_3b
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .line 882
    :goto_3d
    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_42
    return v2

    .line 886
    :cond_43
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 890
    :cond_45
    instance-of v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v2, :cond_50

    .line 892
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_50
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1165
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 1167
    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v1, 0x40

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "CANCELLED"

    .line 1171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    .line 1172
    :cond_4f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1173
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_5c

    .line 1175
    :cond_59
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addPendingString(Ljava/lang/StringBuilder;)V

    :goto_5c
    const-string v1, "]"

    .line 1177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final tryInternalFastPathGetFailure()Ljava/lang/Throwable;
    .registers 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1109
    instance-of v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$Trusted;

    if-eqz v0, :cond_f

    .line 1110
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 1111
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_f

    .line 1112
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 726
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
