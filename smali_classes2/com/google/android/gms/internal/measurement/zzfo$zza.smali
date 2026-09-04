.class public final Lcom/google/android/gms/internal/measurement/zzfo$zza;
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
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfo$zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfo$zza;",
        "Lcom/google/android/gms/internal/measurement/zzfo$zza$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfo$zza;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzfo$zza;",
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
            "Lcom/google/android/gms/internal/measurement/zzfo$zze;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/measurement/zzkc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "Lcom/google/android/gms/internal/measurement/zzfo$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Z

.field private zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfo$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfo$zza;-><init>()V

    .line 46
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zza;

    .line 47
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfo$zza;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzch()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfo$zza;ILcom/google/android/gms/internal/measurement/zzfo$zzb;)V
    .locals 2

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 31
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkc;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfo$zza;ILcom/google/android/gms/internal/measurement/zzfo$zze;)V
    .locals 2

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Lcom/google/android/gms/internal/measurement/zzkc;)Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkc;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic zzd()Lcom/google/android/gms/internal/measurement/zzfo$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zza;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzf:I

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfo$zzb;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfo$zzb;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfn;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/measurement/zzfo$zza;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zza;

    return-object p1

    :pswitch_4
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

    .line 9
    const-class p3, Lcom/google/android/gms/internal/measurement/zzfo$zze;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfo$zzb;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzfo$zza;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo$zza$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfo$zza$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfs;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo$zza;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zza;-><init>()V

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

.method public final zzb()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->size()I

    move-result v0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzfo$zze;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfo$zze;

    return-object p1
.end method

.method public final zzc()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->size()I

    move-result v0

    return v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfo$zzb;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzh:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfo$zze;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method

.method public final zzg()Z
    .locals 2

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo$zza;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
