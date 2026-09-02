.class final Lcom/android/billingclient/api/zzdi;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# static fields
.field private static zza:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static declared-synchronized zza(Landroid/content/Context;)Z
    .registers 3

    const-class p0, Lcom/android/billingclient/api/zzdi;

    monitor-enter p0

    :try_start_3
    sget-boolean v0, Lcom/android/billingclient/api/zzdi;->zza:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_f

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    monitor-exit p0

    return v1

    :cond_a
    const/4 v0, 0x1

    :try_start_b
    sput-boolean v0, Lcom/android/billingclient/api/zzdi;->zza:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_f

    monitor-exit p0

    return v1

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
