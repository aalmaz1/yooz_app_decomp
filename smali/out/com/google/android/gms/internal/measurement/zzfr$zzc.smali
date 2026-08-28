.class public final Lcom/google/android/gms/internal/measurement/zzfr$zzc;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfr$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfr$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zzc;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfr$zzc;Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzf:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzfr$zzc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzi:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzft;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 18
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 11
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    monitor-enter p2

    .line 12
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 16
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

    .line 8
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

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

    const-string p2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1007\u0001\u0003\u1007\u0002\u0004\u1004\u0003"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p1

    .line 3
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzc;-><init>()V

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

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzg:Z

    return v0
.end method

.method public final zze()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zzh:Z

    return v0
.end method

.method public final zzf()Z
    .registers 2

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

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
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzc;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
