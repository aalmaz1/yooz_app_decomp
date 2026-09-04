.class public final Lcom/google/android/gms/internal/measurement/zzfy$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfy$zza;",
        "Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza;-><init>()V

    .line 111
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 112
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    .line 115
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zza;)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 34
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zza;J)V
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 89
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfy$zza;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 75
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zza;)V
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 41
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zza;J)V
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 93
    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzm:J

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzfy$zza;Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcc()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfy$zza;)V
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 48
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzfy$zza;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/measurement/zzfy$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfy$zza;)V
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 54
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzfy$zza;Ljava/lang/String;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 98
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfy$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzfy$zza;)V
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 62
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzfy$zza;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 103
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/measurement/zzfy$zza;)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    .line 69
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/measurement/zzfy$zza;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    .line 108
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi:J

    return-wide v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfx;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 21
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_1

    .line 14
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    monitor-enter p2

    .line 15
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 18
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 19
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 11
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

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

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006\u0008\u1002\u0007"

    .line 10
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzge;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzm:J

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Z
    .locals 1

    .line 122
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Z
    .locals 1

    .line 123
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzn()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()Z
    .locals 1

    .line 125
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()Z
    .locals 1

    .line 126
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .locals 1

    .line 127
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr()Z
    .locals 1

    .line 128
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()Z
    .locals 1

    .line 129
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
