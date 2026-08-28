.class public final Lcom/google/android/gms/internal/measurement/zzfo$zzc;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfo$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfo$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzfo$zzf;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    .line 31
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzi:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/measurement/zzfo$zzc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfo$zzc;Ljava/lang/String;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze:I

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzc;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfn;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 20
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 13
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    monitor-enter p2

    .line 14
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 18
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

    .line 10
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    return-object p1

    :pswitch_33
    const/4 p1, 0x5

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

    const-string p2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p1

    .line 5
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;-><init>()V

    return-object p1

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_57
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzfo$zzf;
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzfo$zzf;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzd()Lcom/google/android/gms/internal/measurement/zzfo$zzf;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzh:Z

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Z
    .registers 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Z
    .registers 3

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method
