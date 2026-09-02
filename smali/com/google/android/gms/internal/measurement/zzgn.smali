.class public final Lcom/google/android/gms/internal/measurement/zzgn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgk;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/Object;

.field private zzh:Z

.field private zzi:[Ljava/lang/String;

.field private final zzj:Lcom/google/android/gms/internal/measurement/zzgq;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzc:Ljava/util/HashMap;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzd:Ljava/util/HashMap;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zze:Ljava/util/HashMap;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzf:Ljava/util/HashMap;

    .line 69
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzg:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzh:Z

    new-array v0, v0, [Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzi:[Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzj:Lcom/google/android/gms/internal/measurement/zzgq;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzgn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-eqz p1, :cond_113

    .line 6
    monitor-enter p0

    .line 8
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_2c

    .line 9
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    new-instance p3, Ljava/util/HashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p3, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    .line 11
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzg:Ljava/lang/Object;

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/measurement/zzgp;-><init>(Lcom/google/android/gms/internal/measurement/zzgn;Landroid/os/Handler;)V

    invoke-virtual {p1, p3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_56

    .line 13
    :cond_2c
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-eqz p3, :cond_56

    .line 14
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 15
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzc:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzd:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 17
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zze:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 18
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzf:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 19
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzg:Ljava/lang/Object;

    .line 20
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzh:Z

    .line 21
    :cond_56
    :goto_56
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzg:Ljava/lang/Object;

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6b

    move-object v2, p1

    .line 24
    :cond_6b
    monitor-exit p0

    return-object v2

    .line 25
    :cond_6d
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzi:[Ljava/lang/String;

    array-length v4, v3

    :goto_70
    if-ge v1, v4, :cond_ed

    aget-object v5, v3, v1

    .line 26
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 27
    iget-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzh:Z

    if-nez p3, :cond_e8

    .line 28
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzi:[Ljava/lang/String;
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_110

    .line 29
    :try_start_80
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzj:Lcom/google/android/gms/internal/measurement/zzgq;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzgm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/zzgm;-><init>()V

    .line 30
    invoke-interface {v1, p1, p3, v3}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgr;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_8d
    .catch Lcom/google/android/gms/internal/measurement/zzgt; {:try_start_80 .. :try_end_8d} :catch_d3
    .catchall {:try_start_80 .. :try_end_8d} :catchall_110

    .line 34
    :try_start_8d
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_bb

    .line 35
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzc:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzd:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zze:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzf:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 40
    :cond_bb
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_d1

    .line 41
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_cc

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    goto :goto_d1

    .line 43
    :cond_cc
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 44
    :cond_d1
    :goto_d1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzh:Z

    .line 45
    :catch_d3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e8

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_e6

    move-object v2, p1

    .line 47
    :cond_e6
    monitor-exit p0

    return-object v2

    .line 48
    :cond_e8
    monitor-exit p0

    return-object v2

    :cond_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 50
    :cond_ed
    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_8d .. :try_end_ee} :catchall_110

    .line 51
    :try_start_ee
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzj:Lcom/google/android/gms/internal/measurement/zzgq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgq;->zza(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_f4
    .catch Lcom/google/android/gms/internal/measurement/zzgt; {:try_start_ee .. :try_end_f4} :catch_10f

    if-eqz p1, :cond_fd

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    move-object p1, v2

    .line 57
    :cond_fd
    monitor-enter p0

    .line 58
    :try_start_fe
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzg:Ljava/lang/Object;

    if-ne p3, v0, :cond_107

    .line 59
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgn;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_107
    monitor-exit p0

    if-eqz p1, :cond_10b

    return-object p1

    :cond_10b
    return-object v2

    :catchall_10c
    move-exception p1

    monitor-exit p0
    :try_end_10e
    .catchall {:try_start_fe .. :try_end_10e} :catchall_10c

    throw p1

    :catch_10f
    return-object v2

    :catchall_110
    move-exception p1

    .line 50
    :try_start_111
    monitor-exit p0
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw p1

    .line 3
    :cond_113
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ContentResolver needed with GservicesDelegateSupplier.init()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
