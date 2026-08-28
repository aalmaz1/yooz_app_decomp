.class public final Lcom/google/android/gms/internal/measurement/zzfr$zzi;
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
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfr$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfr$zzi;",
        "Lcom/google/android/gms/internal/measurement/zzfr$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfr$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zzi;-><init>()V

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    .line 26
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzf:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzg:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzh:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzfr$zzi;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfr$zzi;
    .registers 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzi:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzft;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_64

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2f

    .line 12
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    monitor-enter p2

    .line 13
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_2a

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 16
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

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

    const-string p2, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1004\u0003"

    .line 8
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_57
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfr$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfw;)V

    return-object p1

    .line 4
    :pswitch_5d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfr$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzi;-><init>()V

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

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfr$zzi;->zzf:Ljava/lang/String;

    return-object v0
.end method
