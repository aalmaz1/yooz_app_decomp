.class public final Lcom/google/android/gms/internal/measurement/zzhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhb;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzhw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/SharedPreferences;

.field private final zzc:Ljava/lang/Runnable;

.field private final zzd:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final zze:Ljava/lang/Object;

.field private volatile zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/util/List;
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
    .registers 1

    .line 45
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzhw;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>(Lcom/google/android/gms/internal/measurement/zzhw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzd:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/Object;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzg:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:Landroid/content/SharedPreferences;

    .line 51
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzc:Ljava/lang/Runnable;

    .line 52
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_4
    const-string v1, "direct_boot:"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgs;->zza()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_17
    const/16 v1, 0xc

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcq;->zza:Lcom/google/android/gms/internal/measurement/zzcm;

    .line 8
    invoke-static {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzcu;->zza(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcm;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_31

    .line 9
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    .line 11
    :cond_27
    :try_start_27
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcq;->zza:Lcom/google/android/gms/internal/measurement/zzcm;

    invoke-static {p0, p1, v2, v1}, Lcom/google/android/gms/internal/measurement/zzcu;->zza(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzcm;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_31

    .line 12
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_31
    move-exception p0

    .line 14
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 15
    throw p0
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzhw;
    .registers 6

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgs;->zza()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "direct_boot:"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzgs;->zzb(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_18
    const-class v0, Lcom/google/android/gms/internal/measurement/zzhw;

    monitor-enter v0

    .line 24
    :try_start_1b
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhw;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhw;

    if-nez v2, :cond_31

    .line 26
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 27
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhw;->zza(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/measurement/zzhw;-><init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;)V

    .line 28
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_31
    monitor-exit v0

    return-object v2

    :catchall_33
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_33

    throw p0
.end method

.method static declared-synchronized zza()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzhw;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhw;->zza:Ljava/util/Map;

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

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzhw;

    .line 55
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:Landroid/content/SharedPreferences;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhw;->zzd:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_d

    .line 57
    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhw;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 58
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:Ljava/util/Map;

    if-nez v0, :cond_26

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:Ljava/util/Map;

    if-nez v0, :cond_21

    .line 36
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 37
    :try_start_f
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzb:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 38
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:Ljava/util/Map;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1c

    .line 39
    :try_start_17
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v0, v2

    goto :goto_21

    :catchall_1c
    move-exception p1

    .line 41
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 42
    throw p1

    .line 43
    :cond_21
    :goto_21
    monitor-exit v1

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    if-eqz v0, :cond_2d

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zze:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 61
    :try_start_4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzf:Ljava/util/Map;

    .line 62
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzc:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 63
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_28

    .line 65
    monitor-enter p0

    .line 66
    :try_start_d
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhw;->zzg:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgz;

    .line 67
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzgz;->zza()V

    goto :goto_13

    .line 69
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw p1

    :catchall_28
    move-exception p2

    .line 63
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p2
.end method
