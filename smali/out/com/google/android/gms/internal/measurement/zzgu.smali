.class public final Lcom/google/android/gms/internal/measurement/zzgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhb;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/measurement/zzgu;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:[Ljava/lang/String;


# instance fields
.field private final zzc:Landroid/content/ContentResolver;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Ljava/lang/Runnable;

.field private final zzf:Landroid/database/ContentObserver;

.field private final zzg:Ljava/lang/Object;

.field private volatile zzh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgu;->zza:Ljava/util/Map;

    const-string v0, "key"

    const-string v1, "value"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgu;->zzb:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .registers 6

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzgw;-><init>(Lcom/google/android/gms/internal/measurement/zzgu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzf:Landroid/database/ContentObserver;

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzg:Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzi:Ljava/util/List;

    .line 79
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzc:Landroid/content/ContentResolver;

    .line 82
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzd:Landroid/net/Uri;

    .line 83
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zze:Ljava/lang/Runnable;

    const/4 p3, 0x0

    .line 84
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzgu;
    .registers 7

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/zzgu;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgu;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgu;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_18

    if-nez v2, :cond_16

    .line 4
    :try_start_d
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzgu;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgu;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_16
    .catchall {:try_start_d .. :try_end_12} :catchall_18

    .line 5
    :try_start_12
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_18

    :catch_15
    move-object v2, v3

    .line 8
    :catch_16
    :cond_16
    :try_start_16
    monitor-exit v0

    return-object v2

    :catchall_18
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method static declared-synchronized zzc()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzgu;

    monitor-enter v0

    .line 86
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgu;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgu;

    .line 87
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzgu;->zzc:Landroid/content/ContentResolver;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzgu;->zzf:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_d

    .line 89
    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgu;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 90
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zze()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 63
    :try_start_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzgx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzgx;-><init>(Lcom/google/android/gms/internal/measurement/zzgu;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzha;->zza(Lcom/google/android/gms/internal/measurement/zzhd;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_f} :catch_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_f} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_f} :catch_15
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 64
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_13
    move-exception v1

    goto :goto_29

    :catch_15
    move-exception v1

    goto :goto_1a

    :catch_17
    move-exception v1

    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    :try_start_1a
    const-string v2, "ConfigurationContentLdr"

    const-string v3, "Unable to query ContentProvider, using default values"

    .line 67
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_13

    .line 69
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    .line 71
    :goto_29
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    throw v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzgu;->zza()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final zza()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzh:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzg:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzh:Ljava/util/Map;

    if-nez v0, :cond_11

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzgu;->zze()Ljava/util/Map;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzh:Ljava/util/Map;

    .line 20
    :cond_11
    monitor-exit v1

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :goto_16
    if-eqz v0, :cond_19

    return-object v0

    .line 21
    :cond_19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb()Ljava/util/Map;
    .registers 9

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzc:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzd:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const-string v1, "ConfigurationContentLdr"

    if-nez v0, :cond_16

    const-string v0, "Unable to acquire ContentProviderClient, using default values"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 26
    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzd:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/gms/internal/measurement/zzgu;->zzb:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_9d
    .catchall {:try_start_16 .. :try_end_22} :catchall_9b

    if-nez v2, :cond_36

    :try_start_24
    const-string v3, "ContentProvider query returned null cursor, using default values"

    .line 28
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_8f

    if-eqz v2, :cond_32

    .line 30
    :try_start_2f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_9d
    .catchall {:try_start_2f .. :try_end_32} :catchall_9b

    .line 31
    :cond_32
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v3

    .line 33
    :cond_36
    :try_start_36
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_49

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_8f

    if-eqz v2, :cond_45

    .line 36
    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_45} :catch_9d
    .catchall {:try_start_42 .. :try_end_45} :catchall_9b

    .line 37
    :cond_45
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v3

    :cond_49
    const/16 v4, 0x100

    if-gt v3, v4, :cond_53

    .line 40
    :try_start_4d
    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4, v3}, Landroidx/collection/ArrayMap;-><init>(I)V

    goto :goto_5a

    .line 41
    :cond_53
    new-instance v4, Ljava/util/HashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 42
    :goto_5a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v3, 0x0

    .line 43
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 44
    :cond_6e
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "Cursor read incomplete (ContentProvider dead?), using default values"

    .line 45
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3
    :try_end_7d
    .catchall {:try_start_4d .. :try_end_7d} :catchall_8f

    if-eqz v2, :cond_82

    .line 47
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_9d
    .catchall {:try_start_7f .. :try_end_82} :catchall_9b

    .line 48
    :cond_82
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v3

    :cond_86
    if-eqz v2, :cond_8b

    .line 51
    :try_start_88
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_8b} :catch_9d
    .catchall {:try_start_88 .. :try_end_8b} :catchall_9b

    .line 52
    :cond_8b
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v4

    :catchall_8f
    move-exception v3

    if-eqz v2, :cond_9a

    .line 54
    :try_start_92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_9a

    :catchall_96
    move-exception v2

    :try_start_97
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    throw v3
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9b} :catch_9d
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception v1

    goto :goto_ab

    :catch_9d
    move-exception v2

    :try_start_9e
    const-string v3, "ContentProvider query failed, using default values"

    .line 56
    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_9b

    .line 58
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    return-object v1

    .line 60
    :goto_ab
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 61
    throw v1
.end method

.method public final zzd()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 92
    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzh:Ljava/util/Map;

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zze:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 94
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_28

    .line 96
    monitor-enter p0

    .line 97
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzgz;

    .line 98
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzgz;->zza()V

    goto :goto_13

    .line 100
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw v0

    :catchall_28
    move-exception v1

    .line 94
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method
