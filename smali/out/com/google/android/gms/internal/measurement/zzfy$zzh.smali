.class public final Lcom/google/android/gms/internal/measurement/zzfy$zzh;
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
    name = "zzh"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:F

.field private zzj:D

.field private zzk:Lcom/google/android/gms/internal/measurement/zzkc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;-><init>()V

    .line 74
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 75
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzf:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzch()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)V
    .registers 3

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;D)V
    .registers 4

    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    .line 57
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj:D

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;J)V
    .registers 4

    .line 60
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    .line 61
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;Lcom/google/android/gms/internal/measurement/zzfy$zzh;)V
    .registers 2

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzo()V

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;Ljava/lang/Iterable;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzo()V

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;Ljava/lang/String;)V
    .registers 3

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    .line 66
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)V
    .registers 3

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzh;Ljava/lang/String;)V
    .registers 3

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)V
    .registers 2

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzch()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)V
    .registers 2

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 52
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;
    .registers 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcc()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-object v0
.end method

.method static bridge synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfy$zzh;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    return-object v0
.end method

.method private final zzo()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzc()Z

    move-result v1

    if-nez v1, :cond_e

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    :cond_e
    return-void
.end method


# virtual methods
.method public final zza()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj:D

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

    packed-switch p1, :pswitch_data_74

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 15
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    monitor-enter p2

    .line 16
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

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

    const/4 p2, 0x7

    .line 9
    const-class p3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzge;)V

    return-object p1

    .line 7
    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;-><init>()V

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi:F

    return v0
.end method

.method public final zzc()I
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()J
    .registers 3

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh:J

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method

.method public final zzj()Z
    .registers 2

    .line 87
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

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

    .line 88
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .registers 2

    .line 89
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Z
    .registers 3

    .line 90
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzn()Z
    .registers 2

    .line 91
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
