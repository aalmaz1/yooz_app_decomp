.class public final Lcom/google/android/gms/measurement/internal/zzgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# static fields
.field private static zza:Lcom/google/android/gms/measurement/internal/zzgm;

.field private static final zzb:Ljava/time/Duration;


# instance fields
.field private final zzc:Lcom/google/android/gms/measurement/internal/zzhy;

.field private final zzd:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

.field private final zze:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1e

    .line 4
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/time/Duration;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;->builder()Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;

    move-result-object v0

    const-string v1, "measurement:api"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;->setApi(Ljava/lang/String;)Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingOptions$Builder;->build()Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;

    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/TelemetryLogging;->getClient(Landroid/content/Context;Lcom/google/android/gms/common/internal/TelemetryLoggingOptions;)Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:Lcom/google/android/gms/measurement/internal/zzhy;

    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzhy;)Lcom/google/android/gms/measurement/internal/zzgm;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgm;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/measurement/internal/zzgm;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzhy;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    .line 3
    :cond_f
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzgm;->zza:Lcom/google/android/gms/measurement/internal/zzgm;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(IIJJI)V
    .registers 28

    move-object/from16 v1, p0

    monitor-enter p0

    .line 12
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zzc:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1d

    :goto_1b
    move v0, v5

    goto :goto_31

    .line 16
    :cond_1d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long v6, v2, v6

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzgm;->zzb:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v8
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_6a

    cmp-long v0, v6, v8

    if-lez v0, :cond_30

    goto :goto_1b

    :cond_30
    move v0, v4

    :goto_31
    if-nez v0, :cond_35

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_35
    :try_start_35
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    new-instance v6, Lcom/google/android/gms/common/internal/TelemetryData;

    new-array v5, v5, [Lcom/google/android/gms/common/internal/MethodInvocation;

    new-instance v19, Lcom/google/android/gms/common/internal/MethodInvocation;

    const v8, 0x8dcd

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v7, v19

    move/from16 v9, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move/from16 v18, p7

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    aput-object v19, v5, v4

    .line 20
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 21
    invoke-interface {v0, v6}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 22
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzgm;J)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_68
    .catchall {:try_start_35 .. :try_end_68} :catchall_6a

    .line 23
    monitor-exit p0

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic zza(JLjava/lang/Exception;)V
    .registers 4

    .line 11
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
