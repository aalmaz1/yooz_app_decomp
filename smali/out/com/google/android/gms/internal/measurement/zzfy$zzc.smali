.class public final Lcom/google/android/gms/internal/measurement/zzfy$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;-><init>()V

    .line 51
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    .line 52
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcc()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 23
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzk:Z

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzj:Z

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzc;
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 32
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzf:Z

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 36
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzl:Z

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 40
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzg:Z

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 44
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzh:Z

    return-void
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/measurement/zzfy$zzc;Z)V
    .registers 3

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze:I

    .line 48
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzi:Z

    return-void
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfx;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_74

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 19
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 12
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    monitor-enter p2

    .line 13
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 17
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

    .line 9
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

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

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzge;)V

    return-object p1

    .line 4
    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;-><init>()V

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

.method public final zzd()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzk:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzj:Z

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzf:Z

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzl:Z

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzg:Z

    return v0
.end method

.method public final zzi()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzh:Z

    return v0
.end method

.method public final zzj()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzi:Z

    return v0
.end method
