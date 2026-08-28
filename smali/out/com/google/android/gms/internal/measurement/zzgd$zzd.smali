.class public final Lcom/google/android/gms/internal/measurement/zzgd$zzd;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzgd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;,
        Lcom/google/android/gms/internal/measurement/zzgd$zzd$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzgd$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzgd$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzd;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzgd$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/zzkc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "Lcom/google/android/gms/internal/measurement/zzgd$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgd$zzd;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzch()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzh:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzi:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzc()Lcom/google/android/gms/internal/measurement/zzgd$zzd;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    return-object v0
.end method


# virtual methods
.method public final zza()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzk:D

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgf;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_7c

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 21
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 14
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    monitor-enter p2

    .line 15
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 19
    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    .line 11
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    return-object p1

    :pswitch_33
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzjx;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u180c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_6f
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgd$zzd$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgd$zzd$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzgg;)V

    return-object p1

    .line 5
    :pswitch_75
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgd$zzd;-><init>()V

    return-object p1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_75
        :pswitch_6f
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzf:I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzgd$zzd$zza;

    :cond_a
    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgd$zzd;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zzj:Z

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Z
    .registers 2

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .registers 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzd;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
