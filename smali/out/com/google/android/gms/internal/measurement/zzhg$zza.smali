.class public Lcom/google/android/gms/internal/measurement/zzhg$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzhg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field private static volatile zza:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/gms/internal/measurement/zzhh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/common/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/gms/internal/measurement/zzhh;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza:Lcom/google/common/base/Optional;

    if-nez v0, :cond_3c

    .line 3
    const-class v1, Lcom/google/android/gms/internal/measurement/zzhg$zza;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza:Lcom/google/common/base/Optional;

    if-nez v0, :cond_37

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>()V

    .line 8
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 9
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    goto :goto_34

    .line 11
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgs;->zza()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_30

    .line 15
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 18
    :cond_30
    :goto_30
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(Landroid/content/Context;)Lcom/google/common/base/Optional;

    move-result-object p0

    .line 19
    :goto_34
    sput-object p0, Lcom/google/android/gms/internal/measurement/zzhg$zza;->zza:Lcom/google/common/base/Optional;

    move-object v0, p0

    .line 20
    :cond_37
    monitor-exit v1

    goto :goto_3c

    :catchall_39
    move-exception p0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw p0

    :cond_3c
    :goto_3c
    return-object v0
.end method
