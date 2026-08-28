.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;
    }
.end annotation


# static fields
.field public static final LOCAL:I = -0x1

.field public static final NONE:I = 0x0

.field public static final NO_SELECTION:I = 0x0

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field public static final REMOTE:I = 0x1

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

.field private static zzb:Ljava/lang/Boolean; = null

.field private static zzc:Ljava/lang/String; = null

.field private static zzd:Z = false

.field private static zze:I = -0x1

.field private static zzf:Ljava/lang/Boolean;

.field private static final zzg:Ljava/lang/ThreadLocal;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzk:Lcom/google/android/gms/dynamite/zzq;

.field private static zzl:Lcom/google/android/gms/dynamite/zzr;


# instance fields
.field private final zzj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zzd;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    const-string v0, "DynamiteModule"

    const-string v1, "Module descriptor id \'"

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    const/4 v3, 0x0

    .line 1
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ModuleDescriptor"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v4, "MODULE_VERSION"

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 7
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 9
    :cond_60
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_64
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_64} :catch_78
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_64} :catch_65

    return p0

    :catch_65
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 9
    :catch_78
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Local module descriptor class for "

    .line 11
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8e
    return v3
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 24
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "Selected remote version of "

    const-string v4, "Selected remote version of "

    const-string v5, "VersionPolicy returned invalid code:"

    const-string v6, "No acceptable module "

    const-string v7, "Considering local module "

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2d1

    .line 2
    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/dynamite/zzn;

    new-instance v12, Lcom/google/android/gms/dynamite/zzn;

    invoke-direct {v12, v9}, Lcom/google/android/gms/dynamite/zzn;-><init>(Lcom/google/android/gms/dynamite/zzm;)V

    .line 4
    invoke-virtual {v10, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    .line 6
    :try_start_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 7
    invoke-interface {v2, v1, v3, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v9

    const-string v13, "DynamiteModule"

    move-object/from16 v18, v6

    .line 8
    iget v6, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    move-object/from16 v19, v5

    iget v5, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_50
    .catchall {:try_start_35 .. :try_end_50} :catchall_2b0

    move-object/from16 v20, v11

    :try_start_52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and remote module "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v5, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    if-eqz v5, :cond_27c

    const/4 v6, -0x1

    if-ne v5, v6, :cond_85

    iget v5, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v5, :cond_27c

    move v5, v6

    :cond_85
    const/4 v7, 0x1

    if-ne v5, v7, :cond_8c

    iget v11, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    if-eqz v11, :cond_27c

    :cond_8c
    if-ne v5, v6, :cond_94

    .line 64
    invoke-static {v8, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_92
    .catchall {:try_start_52 .. :try_end_92} :catchall_2ac

    goto/16 :goto_238

    :cond_94
    if-ne v5, v7, :cond_265

    const/4 v5, 0x0

    .line 11
    :try_start_97
    iget v11, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_99
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_97 .. :try_end_99} :catch_207
    .catchall {:try_start_97 .. :try_end_99} :catchall_2ac

    :try_start_99
    const-class v13, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v13
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_9c} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_99 .. :try_end_9c} :catch_1fb
    .catchall {:try_start_99 .. :try_end_9c} :catchall_1ee

    .line 12
    :try_start_9c
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1e2

    .line 13
    sget-object v18, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 14
    monitor-exit v13
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_1eb

    if-eqz v18, :cond_1d9

    .line 16
    :try_start_a7
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v7, 0x2

    if-eqz v13, :cond_151

    const-string v4, "DynamiteModule"

    new-instance v13, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version >= "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v4
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ca} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a7 .. :try_end_ca} :catch_1fb
    .catchall {:try_start_a7 .. :try_end_ca} :catchall_1ee

    :try_start_ca
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;

    .line 34
    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_14e

    if-eqz v0, :cond_145

    .line 36
    :try_start_cf
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v4, :cond_13c

    iget-object v10, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v10, :cond_13c

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v4, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    const/4 v13, 0x0

    .line 39
    invoke-static {v13}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-class v13, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v13
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_e8} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_cf .. :try_end_e8} :catch_1fb
    .catchall {:try_start_cf .. :try_end_e8} :catchall_1ee

    :try_start_e8
    sget v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    if-lt v6, v7, :cond_ee

    const/4 v7, 0x1

    goto :goto_ef

    :cond_ee
    move v7, v5

    .line 40
    :goto_ef
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    monitor-exit v13
    :try_end_f4
    .catchall {:try_start_e8 .. :try_end_f4} :catchall_139

    .line 42
    :try_start_f4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_10e

    const-string v6, "DynamiteModule"

    const-string v7, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 43
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 45
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 46
    invoke-virtual {v0, v6, v3, v11, v4}, Lcom/google/android/gms/dynamite/zzr;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_121

    :cond_10e
    const-string v6, "DynamiteModule"

    const-string v7, "Dynamite loader version < 2, falling back to loadModule2"

    .line 47
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    .line 49
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 50
    invoke-virtual {v0, v6, v3, v11, v4}, Lcom/google/android/gms/dynamite/zzr;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 51
    :goto_121
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_130

    .line 52
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 53
    invoke-direct {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1c5

    .line 51
    :cond_130
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to get module context"

    const/4 v6, 0x0

    .line 52
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_139} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f4 .. :try_end_139} :catch_1fb
    .catchall {:try_start_f4 .. :try_end_139} :catchall_1ee

    :catchall_139
    move-exception v0

    .line 41
    :try_start_13a
    monitor-exit v13
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    :try_start_13b
    throw v0

    .line 36
    :cond_13c
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "No result cursor"

    const/4 v6, 0x0

    .line 37
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 34
    :cond_145
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "DynamiteLoaderV2 was not cached."

    const/4 v6, 0x0

    .line 35
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_13b .. :try_end_14e} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_13b .. :try_end_14e} :catch_1fb
    .catchall {:try_start_13b .. :try_end_14e} :catchall_1ee

    :catchall_14e
    move-exception v0

    .line 34
    :try_start_14f
    monitor-exit v4
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    :try_start_150
    throw v0

    :cond_151
    const-string v0, "DynamiteModule"

    .line 50
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version >= "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v0

    if-eqz v0, :cond_1d0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_197

    .line 21
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v4, :cond_18e

    .line 23
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 24
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    .line 25
    invoke-virtual {v0, v6, v3, v11, v4}, Lcom/google/android/gms/dynamite/zzq;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_1b8

    .line 21
    :cond_18e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "No cached result cursor holder"

    const/4 v6, 0x0

    .line 22
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    :cond_197
    if-ne v4, v7, :cond_1a9

    const-string v4, "DynamiteModule"

    const-string v6, "IDynamite loader version = 2"

    .line 26
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v11}, Lcom/google/android/gms/dynamite/zzq;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    goto :goto_1b8

    :cond_1a9
    const-string v4, "DynamiteModule"

    const-string v6, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 28
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v11}, Lcom/google/android/gms/dynamite/zzq;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 30
    :goto_1b8
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c7

    .line 31
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 32
    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    :goto_1c5
    move-object v0, v4

    goto :goto_238

    .line 30
    :cond_1c7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to load remote module."

    const/4 v6, 0x0

    .line 31
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 18
    :cond_1d0
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to create IDynamiteLoader."

    const/4 v6, 0x0

    .line 19
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    .line 14
    :cond_1d9
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to determine which loading route to use."

    const/4 v6, 0x0

    .line 15
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_1e2
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_1e2} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_150 .. :try_end_1e2} :catch_1fb
    .catchall {:try_start_150 .. :try_end_1e2} :catchall_1ee

    .line 12
    :cond_1e2
    :try_start_1e2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Remote loading disabled"

    const/4 v6, 0x0

    .line 13
    invoke-direct {v0, v4, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    :catchall_1eb
    move-exception v0

    .line 14
    monitor-exit v13
    :try_end_1ed
    .catchall {:try_start_1e2 .. :try_end_1ed} :catchall_1eb

    :try_start_1ed
    throw v0
    :try_end_1ee
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_1ee} :catch_1fd
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1ed .. :try_end_1ee} :catch_1fb
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1ee

    :catchall_1ee
    move-exception v0

    .line 54
    :try_start_1ef
    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Failed to load remote module."

    const/4 v7, 0x0

    .line 55
    invoke-direct {v4, v6, v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v4

    :catch_1fb
    move-exception v0

    .line 56
    throw v0

    :catch_1fd
    move-exception v0

    .line 63
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v6, "Failed to load remote module."

    const/4 v7, 0x0

    .line 57
    invoke-direct {v4, v6, v0, v7}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v4
    :try_end_207
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1ef .. :try_end_207} :catch_207
    .catchall {:try_start_1ef .. :try_end_207} :catchall_2ac

    :catch_207
    move-exception v0

    :try_start_208
    const-string v4, "DynamiteModule"

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load remote module: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v4, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    if-eqz v4, :cond_25a

    new-instance v6, Lcom/google/android/gms/dynamite/zzo;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    .line 60
    invoke-interface {v2, v1, v3, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    move-result-object v1

    .line 61
    iget v1, v1, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25a

    .line 63
    invoke-static {v8, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_238
    .catchall {:try_start_208 .. :try_end_238} :catchall_2ac

    :goto_238
    cmp-long v1, v14, v16

    if-nez v1, :cond_242

    .line 64
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 65
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_24b

    .line 68
    :cond_242
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 66
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :goto_24b
    iget-object v1, v12, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_252

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_252
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    move-object/from16 v11, v20

    .line 68
    invoke-virtual {v1, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    :cond_25a
    move-object/from16 v11, v20

    .line 41
    :try_start_25c
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote load failed. No local fallback found."

    const/4 v3, 0x0

    .line 62
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1

    :cond_265
    move-object/from16 v11, v20

    .line 69
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0

    :cond_27c
    move-object/from16 v11, v20

    .line 70
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 69
    iget v1, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    iget v2, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found. Local version is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and remote version is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
    :try_end_2ac
    .catchall {:try_start_25c .. :try_end_2ac} :catchall_2b0

    :catchall_2ac
    move-exception v0

    move-object/from16 v11, v20

    goto :goto_2b1

    :catchall_2b0
    move-exception v0

    :goto_2b1
    cmp-long v1, v14, v16

    if-nez v1, :cond_2bb

    .line 29
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 65
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2c4

    .line 62
    :cond_2bb
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 66
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    :goto_2c4
    iget-object v1, v12, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v1, :cond_2cb

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2cb
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 68
    invoke-virtual {v1, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    throw v0

    .line 1
    :cond_2d1
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "null application Context"

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 13

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_1c4

    :try_start_3
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1c1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_da

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 2
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "sClassLoader"

    .line 3
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    monitor-enter v4
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_26} :catch_bb
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_26} :catch_b9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_26} :catch_b7
    .catchall {:try_start_9 .. :try_end_26} :catchall_1c1

    .line 5
    :try_start_26
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 6
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-ne v5, v6, :cond_36

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_b4

    goto/16 :goto_b2

    :cond_36
    if-eqz v5, :cond_3f

    .line 7
    :try_start_38
    invoke-static {v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V
    :try_end_3b
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_38 .. :try_end_3b} :catch_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_b4

    :catch_3b
    :try_start_3b
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_b2

    .line 8
    :cond_3f
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 9
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_b4

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_1c1

    return v3

    :cond_48
    :try_start_48
    sget-boolean v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    if-nez v5, :cond_a9

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_b4

    if-eqz v5, :cond_55

    goto :goto_a9

    :cond_55
    const/4 v5, 0x1

    .line 12
    :try_start_56
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v5

    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    if-eqz v6, :cond_9c

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_65

    goto :goto_9c

    .line 15
    :cond_65
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz v6, :cond_6c

    goto :goto_8f

    .line 24
    :cond_6c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_81

    .line 16
    new-instance v6, Ldalvik/system/DelegateLastClassLoader;

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 17
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ldalvik/system/DelegateLastClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_8f

    .line 18
    :cond_81
    new-instance v6, Lcom/google/android/gms/dynamite/zzc;

    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    .line 19
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/dynamite/zzc;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 20
    :goto_8f
    invoke-static {v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Ljava/lang/ClassLoader;)V

    .line 21
    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;
    :try_end_99
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_56 .. :try_end_99} :catch_9f
    .catchall {:try_start_56 .. :try_end_99} :catchall_b4

    .line 24
    :try_start_99
    monitor-exit v4
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_b4

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_1c1

    return v5

    .line 14
    :cond_9c
    :goto_9c
    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_b4

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_1c1

    return v5

    .line 22
    :catch_9f
    :try_start_9f
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b2

    .line 11
    :cond_a9
    :goto_a9
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_b2
    monitor-exit v4

    goto :goto_d8

    :catchall_b4
    move-exception v1

    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_9f .. :try_end_b6} :catchall_b4

    :try_start_b6
    throw v1
    :try_end_b7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b6 .. :try_end_b7} :catch_bb
    .catch Ljava/lang/IllegalAccessException; {:try_start_b6 .. :try_end_b7} :catch_b9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b6 .. :try_end_b7} :catch_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_1c1

    :catch_b7
    move-exception v1

    goto :goto_bc

    :catch_b9
    move-exception v1

    goto :goto_bc

    :catch_bb
    move-exception v1

    :goto_bc
    :try_start_bc
    const-string v4, "DynamiteModule"

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load module via V2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    :goto_d8
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Ljava/lang/Boolean;

    .line 26
    :cond_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_1c1

    .line 27
    :try_start_db
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_df
    .catchall {:try_start_db .. :try_end_df} :catchall_1c4

    if-eqz v0, :cond_102

    .line 47
    :try_start_e1
    invoke-static {p0, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result p0
    :try_end_e5
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_e1 .. :try_end_e5} :catch_e6
    .catchall {:try_start_e1 .. :try_end_e5} :catchall_1c4

    return p0

    :catch_e6
    move-exception p1

    :try_start_e7
    const-string p2, "DynamiteModule"

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve remote module version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 28
    :cond_102
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;

    move-result-object v4
    :try_end_106
    .catchall {:try_start_e7 .. :try_end_106} :catchall_1c4

    if-nez v4, :cond_10a

    goto/16 :goto_1b8

    .line 29
    :cond_10a
    :try_start_10a
    invoke-virtual {v4}, Lcom/google/android/gms/dynamite/zzq;->zze()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_172

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    .line 30
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_125

    iget-object v0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-eqz v0, :cond_125

    .line 39
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto/16 :goto_1b8

    .line 31
    :cond_125
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v6, p1

    move v7, p2

    .line 32
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/dynamite/zzq;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_141} :catch_197
    .catchall {:try_start_10a .. :try_end_141} :catchall_1b9

    if-eqz p1, :cond_15f

    .line 34
    :try_start_143
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_14a

    goto :goto_15f

    .line 37
    :cond_14a
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_157

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    move-result v0
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_143 .. :try_end_154} :catch_16f
    .catchall {:try_start_143 .. :try_end_154} :catchall_16c

    if-eqz v0, :cond_157

    goto :goto_158

    :cond_157
    move-object v2, p1

    :goto_158
    if-eqz v2, :cond_15d

    .line 36
    :try_start_15a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_1c4

    :cond_15d
    move v3, p2

    goto :goto_1b8

    :cond_15f
    :goto_15f
    :try_start_15f
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    .line 35
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catch Landroid/os/RemoteException; {:try_start_15f .. :try_end_166} :catch_16f
    .catchall {:try_start_15f .. :try_end_166} :catchall_16c

    if-eqz p1, :cond_1b8

    .line 36
    :try_start_168
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1c4

    goto :goto_1b8

    :catchall_16c
    move-exception p2

    move-object v2, p1

    goto :goto_1bb

    :catch_16f
    move-exception p2

    move-object v2, p1

    goto :goto_199

    :cond_172
    const/4 v1, 0x2

    if-ne v0, v1, :cond_185

    :try_start_175
    const-string v0, "DynamiteModule"

    const-string v1, "IDynamite loader version = 2, no high precision latency measurement."

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 42
    invoke-virtual {v4, v0, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v3

    goto :goto_1b8

    :cond_185
    const-string v0, "DynamiteModule"

    const-string v1, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-virtual {v4, v0, p1, p2}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    move-result v3
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_194} :catch_197
    .catchall {:try_start_175 .. :try_end_194} :catchall_1b9

    goto :goto_1b8

    :goto_195
    move-object p2, p1

    goto :goto_1bb

    :catch_197
    move-exception p1

    move-object p2, p1

    :goto_199
    :try_start_199
    const-string p1, "DynamiteModule"

    .line 45
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve remote module version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b3
    .catchall {:try_start_199 .. :try_end_1b3} :catchall_1b9

    if-eqz v2, :cond_1b8

    .line 36
    :try_start_1b5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1b8
    :goto_1b8
    return v3

    :catchall_1b9
    move-exception p1

    goto :goto_195

    :goto_1bb
    if-eqz v2, :cond_1c0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_1c0
    throw p2
    :try_end_1c1
    .catchall {:try_start_1b5 .. :try_end_1c1} :catchall_1c4

    :catchall_1c1
    move-exception p1

    .line 26
    :try_start_1c2
    monitor-exit v0
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    :try_start_1c3
    throw p1
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c4

    :catchall_1c4
    move-exception p1

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 50
    throw p1
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string p0, "api_force_staging"

    const-string v4, "api"

    const/4 v7, 0x1

    if-eq v7, p2, :cond_19

    move-object p0, v4

    :cond_19
    new-instance p2, Landroid/net/Uri$Builder;

    .line 3
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 4
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "com.google.android.gms.chimera"

    .line 5
    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "requestStartTime"

    .line 8
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_b5
    .catchall {:try_start_1 .. :try_end_48} :catchall_b2

    if-eqz p0, :cond_a3

    .line 11
    :try_start_4a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_a3

    const/4 p1, 0x0

    .line 14
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_8e

    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5a} :catch_9b
    .catchall {:try_start_4a .. :try_end_5a} :catchall_d8

    const/4 v2, 0x2

    .line 15
    :try_start_5b
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/String;

    const-string v2, "loaderVersion"

    .line 16
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6f

    .line 17
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sput v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:I

    :cond_6f
    const-string v2, "disableStandaloneDynamiteLoader2"

    .line 18
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_82

    .line 19
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_7f

    :cond_7e
    move v7, p1

    :goto_7f
    sput-boolean v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    move p1, v7

    .line 20
    :cond_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_5b .. :try_end_83} :catchall_8b

    .line 21
    :try_start_83
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/database/Cursor;)Z

    move-result v1
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_87} :catch_9b
    .catchall {:try_start_83 .. :try_end_87} :catchall_d8

    if-eqz v1, :cond_8e

    move-object p0, v0

    goto :goto_8e

    :catchall_8b
    move-exception p1

    .line 20
    :try_start_8c
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw p1

    :cond_8e
    :goto_8e
    if-eqz p3, :cond_9d

    if-nez p1, :cond_93

    goto :goto_9d

    :cond_93
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "forcing fallback to container DynamiteLoader impl"

    .line 23
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw p1
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9b} :catch_9b
    .catchall {:try_start_8d .. :try_end_9b} :catchall_d8

    :catch_9b
    move-exception p1

    goto :goto_b8

    :cond_9d
    :goto_9d
    if-eqz p0, :cond_a2

    .line 22
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a2
    return p2

    :cond_a3
    :try_start_a3
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    .line 12
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    .line 13
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Lcom/google/android/gms/dynamite/zzp;)V

    throw p1
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b2} :catch_9b
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_d8

    :catchall_b2
    move-exception p0

    move-object p1, p0

    goto :goto_da

    :catch_b5
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 22
    :goto_b8
    :try_start_b8
    instance-of p2, p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p2, :cond_bd

    .line 24
    throw p1

    .line 23
    :cond_bd
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2 version check failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw p2
    :try_end_d8
    .catchall {:try_start_b8 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception p1

    move-object v0, p0

    :goto_da
    if-eqz v0, :cond_df

    .line 22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 26
    :cond_df
    throw p1
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DynamiteModule"

    const-string v1, "Selected local version of "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private static zzd(Ljava/lang/ClassLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1a

    move-object v1, v0

    goto :goto_2c

    :cond_1a
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 2
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzr;

    if-eqz v2, :cond_27

    .line 3
    check-cast v1, Lcom/google/android/gms/dynamite/zzr;

    goto :goto_2c

    .line 4
    :cond_27
    new-instance v1, Lcom/google/android/gms/dynamite/zzr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzr;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_2c
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzr;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2e} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2e} :catch_35
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2e} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_2e} :catch_31
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception p0

    goto :goto_38

    :catch_31
    move-exception p0

    goto :goto_38

    :catch_33
    move-exception p0

    goto :goto_38

    :catch_35
    move-exception p0

    goto :goto_38

    :catch_37
    move-exception p0

    .line 3
    :goto_38
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate dynamite loader"

    .line 4
    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1
.end method

.method private static zze(Landroid/database/Cursor;)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    if-nez v1, :cond_12

    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static zzf(Landroid/content/Context;)Z
    .registers 7

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    const-string v2, "DynamiteModule"

    const/4 v3, 0x0

    if-nez v0, :cond_60

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.google.android.gms.chimera"

    .line 4
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    const v5, 0x989680

    .line 6
    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_41

    if-eqz v0, :cond_41

    const-string p0, "com.google.android.gms"

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    move v3, v1

    .line 5
    :cond_41
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 9
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_60

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-nez p0, :cond_60

    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Z

    :cond_60
    if-nez v3, :cond_67

    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return v3
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzq;
    .registers 6

    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    .line 1
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v1

    :try_start_5
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;

    if-eqz v2, :cond_b

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_57

    return-object v2

    :cond_b
    const/4 v2, 0x0

    :try_start_c
    const-string v3, "com.google.android.gms"

    const/4 v4, 0x3

    .line 2
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_27

    move-object v3, v2

    goto :goto_39

    :cond_27
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 6
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/dynamite/zzq;

    if-eqz v4, :cond_34

    .line 7
    check-cast v3, Lcom/google/android/gms/dynamite/zzq;

    goto :goto_39

    :cond_34
    new-instance v3, Lcom/google/android/gms/dynamite/zzq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    :goto_39
    if-eqz v3, :cond_55

    .line 5
    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Lcom/google/android/gms/dynamite/zzq;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_3f
    .catchall {:try_start_c .. :try_end_3d} :catchall_57

    .line 10
    :try_start_3d
    monitor-exit v1

    return-object v3

    :catch_3f
    move-exception p0

    const-string v3, "DynamiteModule"

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_55
    monitor-exit v1

    return-object v2

    :catchall_57
    move-exception p0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    throw p0
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_15
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_10} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    goto :goto_16

    :catch_13
    move-exception v0

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/android/gms/dynamite/zzp;)V

    throw v1
.end method
