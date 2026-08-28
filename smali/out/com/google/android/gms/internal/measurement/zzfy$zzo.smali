.class public final Lcom/google/android/gms/internal/measurement/zzfy$zzo;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzo;",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:F

.field private zzk:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;-><init>()V

    .line 65
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 66
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo;)V
    .registers 3

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo;D)V
    .registers 4

    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    .line 44
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo;J)V
    .registers 4

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    .line 48
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo;Ljava/lang/String;)V
    .registers 3

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzo;)V
    .registers 3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzo;J)V
    .registers 4

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    .line 57
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzf:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzo;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfy$zzo;)V
    .registers 2

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 39
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;
    .registers 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcc()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfy$zzo;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    return-object v0
.end method


# virtual methods
.method public final zza()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk:D

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfx;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_6e

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 22
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 20
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

    .line 12
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    return-object p1

    :pswitch_33
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_61
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzge;)V

    return-object p1

    .line 7
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;-><init>()V

    return-object p1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_61
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzb()F
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzj:F

    return v0
.end method

.method public final zzc()J
    .registers 3

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi:J

    return-wide v0
.end method

.method public final zzd()J
    .registers 3

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzf:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Z
    .registers 2

    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .registers 2

    .line 73
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Z
    .registers 2

    .line 74
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .registers 3

    .line 75
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Z
    .registers 2

    .line 76
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
