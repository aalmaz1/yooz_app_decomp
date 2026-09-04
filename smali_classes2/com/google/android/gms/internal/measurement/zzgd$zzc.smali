.class public final Lcom/google/android/gms/internal/measurement/zzgd$zzc;
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
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzgd$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzgd$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzgd$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzc;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzll;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzll<",
            "Lcom/google/android/gms/internal/measurement/zzgd$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzkc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkc<",
            "Lcom/google/android/gms/internal/measurement/zzgd$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/measurement/zzgd$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgd$zzc;-><init>()V

    .line 23
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    .line 24
    const-class v1, Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzch()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzkc;

    return-void
.end method

.method static bridge synthetic zzb()Lcom/google/android/gms/internal/measurement/zzgd$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzgd$zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzgd$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgd$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzgd$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgf;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 18
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_1

    .line 11
    const-class p2, Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    monitor-enter p2

    .line 12
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzjt$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzjt$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    .line 15
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzd:Lcom/google/android/gms/internal/measurement/zzll;

    .line 16
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

    .line 8
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 5
    const-class p3, Lcom/google/android/gms/internal/measurement/zzgd$zzd;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const-string p2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    .line 7
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzc:Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgd$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgd$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzgg;)V

    return-object p1

    .line 3
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgd$zzc;-><init>()V

    return-object p1

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

.method public final zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgd$zzd;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzkc;

    return-object v0
.end method
