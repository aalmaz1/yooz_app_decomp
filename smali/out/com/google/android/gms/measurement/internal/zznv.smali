.class public Lcom/google/android/gms/measurement/internal/zznv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzjc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zznv$zzb;,
        Lcom/google/android/gms/measurement/internal/zznv$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zznv;


# instance fields
.field private zzaa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:J

.field private final zzac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzje;",
            ">;"
        }
    .end annotation
.end field

.field private final zzad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzax;",
            ">;"
        }
    .end annotation
.end field

.field private final zzae:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zznv$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaf:Lcom/google/android/gms/measurement/internal/zzlk;

.field private zzag:Ljava/lang/String;

.field private final zzah:Lcom/google/android/gms/measurement/internal/zzor;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzhl;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzgr;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzal;

.field private zze:Lcom/google/android/gms/measurement/internal/zzgy;

.field private zzf:Lcom/google/android/gms/measurement/internal/zznq;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzt;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzoo;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzli;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzmw;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zznu;

.field private zzl:Lcom/google/android/gms/measurement/internal/zzhf;

.field private final zzm:Lcom/google/android/gms/measurement/internal/zzhy;

.field private zzn:Z

.field private zzo:Z

.field private zzp:J

.field private zzq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzs:I

.field private zzt:I

.field private zzu:Z

.field private zzv:Z

.field private zzw:Z

.field private zzx:Ljava/nio/channels/FileLock;

.field private zzy:Ljava/nio/channels/FileChannel;

.field private zzz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzok;)V
    .registers 3

    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzhy;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzok;Lcom/google/android/gms/measurement/internal/zzhy;)V
    .registers 5

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 411
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzn:Z

    .line 412
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    .line 413
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzof;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzof;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    .line 414
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzok;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 416
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzdw;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzhy;

    move-result-object p2

    .line 418
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    const-wide/16 v0, -0x1

    .line 419
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 421
    new-instance p2, Lcom/google/android/gms/measurement/internal/zznu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zznu;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 422
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznu;

    .line 424
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzoo;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 426
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 427
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Lcom/google/android/gms/measurement/internal/zzoo;

    .line 429
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzgr;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 431
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 432
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    .line 434
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzhl;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 436
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 437
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 438
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzac:Ljava/util/Map;

    .line 439
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    .line 440
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    .line 441
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzok;)V

    .line 442
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzhv;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    return v1

    .line 4
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_45

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v0, v3, :cond_45

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 9
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v0

    .line 10
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    if-eq v0, v3, :cond_45

    .line 11
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzh:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 12
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v0, p1, :cond_44

    return v2

    :cond_44
    return v1

    .line 13
    :cond_45
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 14
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 15
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p1

    if-eqz p1, :cond_57

    return v2

    :cond_57
    return v1
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .registers 7

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 19
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4d

    :cond_11
    const/4 v1, 0x4

    .line 23
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 24
    :try_start_18
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 25
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_36

    const/4 v1, -0x1

    if-eq p1, v1, :cond_35

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return v0

    .line 30
    :cond_36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 31
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_3d} :catch_3e

    goto :goto_4c

    :catch_3e
    move-exception p1

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4c
    return v0

    .line 20
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzax;
    .registers 13

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    const/4 v3, 0x1

    .line 219
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    .line 218
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v0, :cond_37

    .line 212
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne p1, p3, :cond_2a

    .line 213
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zza()I

    move-result v2

    .line 214
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;I)V

    goto :goto_31

    .line 216
    :cond_2a
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 217
    :goto_31
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzax;

    .line 219
    invoke-direct {p1, v6, v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    .line 221
    :cond_37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v0

    .line 222
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    if-eq v0, v7, :cond_99

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v0, v7, :cond_44

    goto :goto_99

    .line 228
    :cond_44
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjh;->zzb:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v0, p2, :cond_5d

    .line 229
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 230
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p2

    .line 231
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    if-eq p2, v0, :cond_5d

    .line 232
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzh:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p3, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    :goto_5b
    move-object v0, p2

    goto :goto_a2

    .line 234
    :cond_5d
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 235
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object p2

    .line 237
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzje;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p3

    .line 238
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    if-eq p3, v0, :cond_73

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne p3, v0, :cond_72

    goto :goto_73

    :cond_72
    move v3, v5

    .line 239
    :cond_73
    :goto_73
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    if-ne p2, v0, :cond_82

    if-eqz v3, :cond_82

    .line 240
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzak;->zzc:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p2, v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    move-object v0, p3

    goto :goto_a2

    .line 242
    :cond_82
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzak;->zzb:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {p4, p2, p3}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 243
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 244
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Z

    move-result p2

    if-eqz p2, :cond_96

    .line 246
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    goto :goto_5b

    .line 247
    :cond_96
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    goto :goto_5b

    .line 223
    :cond_99
    :goto_99
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzax;->zza()I

    move-result v2

    .line 224
    sget-object p2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {p4, p2, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;I)V

    .line 249
    :goto_a2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzm(Ljava/lang/String;)Z

    move-result p2

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzh(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    .line 252
    sget-object p3, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-eq v0, p3, :cond_cd

    invoke-interface {p1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_bb

    goto :goto_cd

    .line 257
    :cond_bb
    new-instance p3, Lcom/google/android/gms/measurement/internal/zzax;

    .line 259
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v0, ""

    if-eqz p2, :cond_c9

    .line 260
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :cond_c9
    invoke-direct {p3, v4, v2, p4, v0}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    .line 253
    :cond_cd
    :goto_cd
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzax;

    .line 255
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v6, v2, p2, v1}, Lcom/google/android/gms/measurement/internal/zzax;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zznv;)Lcom/google/android/gms/measurement/internal/zzhy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;
    .registers 4

    if-eqz p0, :cond_26

    .line 294
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzan()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 295
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zznv;
    .registers 3

    .line 298
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    if-nez v0, :cond_2c

    .line 301
    const-class v0, Lcom/google/android/gms/measurement/internal/zznv;

    monitor-enter v0

    .line 302
    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    if-nez v1, :cond_27

    .line 304
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzok;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzok;-><init>(Landroid/content/Context;)V

    .line 305
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzok;

    .line 306
    new-instance v1, Lcom/google/android/gms/measurement/internal/zznv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Lcom/google/android/gms/measurement/internal/zzok;)V

    .line 307
    sput-object v1, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    .line 308
    :cond_27
    monitor-exit v0

    goto :goto_2c

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_29

    throw p0

    .line 309
    :cond_2c
    :goto_2c
    sget-object p0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Lcom/google/android/gms/measurement/internal/zznv;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 9

    .line 312
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 316
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-nez p1, :cond_54

    .line 317
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 320
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 324
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_53} :catch_59

    return-object p1

    .line 328
    :cond_54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_59
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzje;)Ljava/lang/String;
    .registers 6

    .line 341
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result p1

    if-eqz p1, :cond_29

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 344
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->zzv()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 345
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 360
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 361
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 362
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_31

    return-object v0

    :cond_31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3f
    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;ILjava/lang/String;)V
    .registers 7

    .line 717
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 718
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 719
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 722
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    .line 723
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 724
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p1

    .line 725
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 726
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 727
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    .line 728
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p2

    .line 729
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 730
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)V
    .registers 5

    .line 1630
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1631
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1632
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1634
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;JZ)V
    .registers 16

    if-eqz p4, :cond_5

    const-string v0, "_se"

    goto :goto_7

    :cond_5
    const-string v0, "_lte"

    .line 942
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 943
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1a

    goto :goto_3d

    .line 948
    :cond_1a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzop;

    .line 949
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    .line 950
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 951
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, p2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_56

    .line 944
    :cond_3d
    :goto_3d
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzop;

    .line 945
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    .line 946
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 947
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 952
    :goto_56
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v1

    .line 953
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v1

    .line 954
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 955
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v1

    .line 956
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 959
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_89

    .line 961
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzo;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    const/4 v0, 0x1

    goto :goto_8a

    :cond_89
    const/4 v0, 0x0

    :goto_8a
    if-nez v0, :cond_8f

    .line 964
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_8f
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_b2

    .line 966
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    if-eqz p4, :cond_a1

    const-string p1, "session-scoped"

    goto :goto_a3

    :cond_a1
    const-string p1, "lifetime"

    .line 970
    :goto_a3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 971
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    iget-object p4, v8, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 972
    invoke-virtual {p2, p3, p1, p4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b2
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzok;)V
    .registers 5

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 369
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 370
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzl:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 372
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 374
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 375
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Lcom/google/android/gms/measurement/internal/zzal;

    .line 376
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzai;)V

    .line 378
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzmw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzmw;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 380
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 381
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 383
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 385
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 386
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:Lcom/google/android/gms/measurement/internal/zzt;

    .line 388
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzli;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzli;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 390
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 391
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    .line 393
    new-instance p1, Lcom/google/android/gms/measurement/internal/zznq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zznq;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 395
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zznr;->zzam()V

    .line 396
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Lcom/google/android/gms/measurement/internal/zznq;

    .line 398
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzgy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 399
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Lcom/google/android/gms/measurement/internal/zzgy;

    .line 400
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    if-eq p1, v0, :cond_75

    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 405
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzn:Z

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 14

    const-string v0, "_sc"

    const-string v1, "_si"

    const-string v2, "_o"

    const-string v3, "_sn"

    .line 2513
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2514
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2515
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2b

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_2b

    .line 2517
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_33

    .line 2516
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    invoke-virtual {p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result p1

    :goto_33
    int-to-long v3, p1

    .line 2519
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    int-to-long v5, p1

    .line 2521
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 2522
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    const/16 v1, 0x28

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    cmp-long v1, v5, v3

    if-lez v1, :cond_be

    .line 2523
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 2524
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2526
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 2527
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzg()Ljava/lang/String;

    move-result-object p1

    .line 2528
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    invoke-virtual {p2, p4, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Z)I

    move-result p2

    .line 2529
    invoke-static {p1, p2, v2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 2530
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2532
    :cond_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p4

    .line 2533
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p4

    const-string v0, "Param value is too long; discarded. Name, value length"

    .line 2534
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2535
    invoke-virtual {p4, v0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p4, "_err"

    .line 2536
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_b7

    const-wide/16 v2, 0x4

    .line 2537
    invoke-virtual {p3, p4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2538
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_b7

    .line 2539
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_el"

    .line 2540
    invoke-virtual {p3, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2541
    :cond_b7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_be
    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V
    .registers 4

    .line 2025
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2026
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2027
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 6

    .line 2030
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 2032
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Z)V

    .line 2033
    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Long;)V

    .line 2034
    invoke-virtual {p1, p4}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/Long;)V

    .line 2035
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 2036
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    const/4 p3, 0x0

    .line 2037
    invoke-virtual {p2, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    :cond_21
    return-void
.end method

.method private final zza(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1784
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1785
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 1786
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return-void

    .line 1787
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .registers 8

    .line 3806
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    const/4 v0, 0x0

    if-eqz p2, :cond_57

    .line 3807
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_57

    :cond_11
    const/4 v1, 0x4

    .line 3811
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3812
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3813
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 3814
    :try_start_1e
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 3815
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 3816
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 3817
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_47

    .line 3818
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_47} :catch_48

    :cond_47
    return p1

    :catch_48
    move-exception p1

    .line 3821
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 3808
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Z
    .registers 11

    .line 3776
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3777
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3779
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 3780
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_23

    move-object v0, v2

    goto :goto_27

    .line 3781
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v0

    .line 3783
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_3f

    .line 3784
    :cond_3b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v2

    :goto_3f
    if-eqz v2, :cond_b2

    .line 3785
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 3788
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3789
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3791
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 3793
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 3794
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_76

    goto :goto_b0

    .line 3796
    :cond_76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v2

    .line 3798
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 3799
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_98

    .line 3800
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 3801
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3802
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b0
    :goto_b0
    const/4 p1, 0x1

    return p1

    :cond_b2
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .registers 45

    move-object/from16 v1, p0

    const-string v2, "_ai"

    const-string v3, "items"

    .line 2964
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 2965
    :try_start_d
    new-instance v4, Lcom/google/android/gms/measurement/internal/zznv$zza;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zznv$zza;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzoi;)V

    .line 2966
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 2968
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2970
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_122c

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2972
    :try_start_27
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 2973
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_2f} :catch_224
    .catchall {:try_start_27 .. :try_end_2f} :catchall_21f

    const-string v17, ""

    if-eqz v16, :cond_86

    cmp-long v16, v7, v10

    if-eqz v16, :cond_46

    :try_start_37
    new-array v5, v12, [Ljava/lang/String;

    .line 2976
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v14

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v13

    goto :goto_4e

    :cond_46
    new-array v5, v13, [Ljava/lang/String;

    .line 2977
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v14

    :goto_4e
    if-eqz v16, :cond_52

    const-string v17, "rowid <= ? and "

    :cond_52
    move-object/from16 v9, v17

    .line 2979
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v10, "select app_id, metadata_fingerprint from raw_events where "

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2980
    invoke-virtual {v15, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_37 .. :try_end_6d} :catch_224
    .catchall {:try_start_37 .. :try_end_6d} :catchall_21f

    .line 2981
    :try_start_6d
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6d .. :try_end_71} :catch_21a
    .catchall {:try_start_6d .. :try_end_71} :catchall_1224

    if-nez v9, :cond_7a

    if-eqz v5, :cond_23f

    .line 2983
    :try_start_75
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_122c

    goto/16 :goto_23f

    .line 2985
    :cond_7a
    :try_start_7a
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_7e} :catch_21a
    .catchall {:try_start_7a .. :try_end_7e} :catchall_1224

    .line 2986
    :try_start_7e
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2987
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7e .. :try_end_85} :catch_218
    .catchall {:try_start_7e .. :try_end_85} :catchall_1224

    goto :goto_d0

    :cond_86
    move-wide v9, v10

    cmp-long v5, v7, v9

    if-eqz v5, :cond_97

    const/4 v9, 0x2

    :try_start_8c
    new-array v10, v9, [Ljava/lang/String;

    aput-object p1, v10, v14

    .line 2990
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v13

    goto :goto_9b

    :cond_97
    new-array v10, v13, [Ljava/lang/String;

    aput-object p1, v10, v14

    :goto_9b
    if-eqz v5, :cond_9f

    const-string v17, " and rowid <= ?"

    :cond_9f
    move-object/from16 v5, v17

    .line 2993
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " order by rowid limit 1;"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2994
    invoke-virtual {v15, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8c .. :try_end_ba} :catch_224
    .catchall {:try_start_8c .. :try_end_ba} :catchall_21f

    .line 2995
    :try_start_ba
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ba .. :try_end_be} :catch_21a
    .catchall {:try_start_ba .. :try_end_be} :catchall_1224

    if-nez v9, :cond_c7

    if-eqz v5, :cond_23f

    .line 2997
    :try_start_c2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_122c

    goto/16 :goto_23f

    .line 2999
    :cond_c7
    :try_start_c7
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3000
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c7 .. :try_end_ce} :catch_21a
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_1224

    move-object/from16 v9, p1

    :goto_d0
    :try_start_d0
    const-string v16, "raw_events_metadata"

    const-string v11, "metadata"

    .line 3001
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "app_id = ? and metadata_fingerprint = ?"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/String;

    aput-object v9, v12, v14

    aput-object v10, v12, v13

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "rowid"

    const-string v23, "2"

    move-object v11, v15

    move-object v15, v11

    move-object/from16 v19, v12

    .line 3002
    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3003
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_10f

    .line 3004
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 3005
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "Raw event metadata record is missing. appId"

    .line 3006
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_108
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d0 .. :try_end_108} :catch_218
    .catchall {:try_start_d0 .. :try_end_108} :catchall_1224

    if-eqz v5, :cond_23f

    .line 3008
    :try_start_10a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_122c

    goto/16 :goto_23f

    .line 3010
    :cond_10f
    :try_start_10f
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12
    :try_end_113
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10f .. :try_end_113} :catch_218
    .catchall {:try_start_10f .. :try_end_113} :catchall_1224

    .line 3011
    :try_start_113
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzw()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v15

    invoke-static {v15, v12}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfy$zzk;
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_125} :catch_1ff
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_113 .. :try_end_125} :catch_218
    .catchall {:try_start_113 .. :try_end_125} :catchall_1224

    .line 3021
    :try_start_125
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_13c

    .line 3022
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v15

    .line 3023
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v15

    const-string v13, "Get multiple raw event metadata records, expected one. appId"

    .line 3024
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 3025
    invoke-virtual {v15, v13, v14}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3026
    :cond_13c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3027
    invoke-interface {v4, v12}, Lcom/google/android/gms/measurement/internal/zzas;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk;)V

    const-wide/16 v12, -0x1

    cmp-long v14, v7, v12

    if-eqz v14, :cond_15f

    const-string v12, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v14, v13

    const/4 v13, 0x1

    aput-object v10, v14, v13

    .line 3030
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v14, v8

    move-object/from16 v18, v12

    move-object/from16 v19, v14

    goto :goto_16e

    :cond_15f
    const-string v7, "app_id = ? and metadata_fingerprint = ?"

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v9, v12, v8

    const/4 v8, 0x1

    aput-object v10, v12, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v12

    :goto_16e
    const-string v16, "raw_events"

    const-string v7, "rowid"

    const-string v8, "name"

    const-string v10, "timestamp"

    const-string v12, "data"

    .line 3033
    filled-new-array {v7, v8, v10, v12}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "rowid"

    const/16 v23, 0x0

    move-object v15, v11

    .line 3034
    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3035
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1a7

    .line 3036
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 3037
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "Raw event data disappeared while in transaction. appId"

    .line 3038
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 3039
    invoke-virtual {v7, v8, v10}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_125 .. :try_end_1a0} :catch_218
    .catchall {:try_start_125 .. :try_end_1a0} :catchall_1224

    if-eqz v5, :cond_23f

    .line 3041
    :try_start_1a2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_122c

    goto/16 :goto_23f

    :cond_1a7
    const/4 v7, 0x0

    .line 3043
    :try_start_1a8
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v7, 0x3

    .line 3044
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8
    :try_end_1b1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a8 .. :try_end_1b1} :catch_218
    .catchall {:try_start_1a8 .. :try_end_1b1} :catchall_1224

    .line 3045
    :try_start_1b1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1bb} :catch_1e0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b1 .. :try_end_1bb} :catch_218
    .catchall {:try_start_1b1 .. :try_end_1bb} :catchall_1224

    const/4 v8, 0x1

    .line 3052
    :try_start_1bc
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v8

    const/4 v12, 0x2

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3053
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-interface {v4, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzas;->zza(JLcom/google/android/gms/internal/measurement/zzfy$zzf;)Z

    move-result v7
    :try_end_1d8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1bc .. :try_end_1d8} :catch_218
    .catchall {:try_start_1bc .. :try_end_1d8} :catchall_1224

    if-nez v7, :cond_1f3

    if-eqz v5, :cond_23f

    .line 3055
    :try_start_1dc
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1df
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_122c

    goto :goto_23f

    :catch_1e0
    move-exception v0

    move-object v7, v0

    .line 3048
    :try_start_1e2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 3049
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v10, "Data loss. Failed to merge raw event. appId"

    .line 3050
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3057
    :cond_1f3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_1f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e2 .. :try_end_1f7} :catch_218
    .catchall {:try_start_1e2 .. :try_end_1f7} :catchall_1224

    if-nez v7, :cond_1a7

    if-eqz v5, :cond_23f

    .line 3059
    :try_start_1fb
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1fe
    .catchall {:try_start_1fb .. :try_end_1fe} :catchall_122c

    goto :goto_23f

    :catch_1ff
    move-exception v0

    move-object v7, v0

    .line 3014
    :try_start_201
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 3015
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v10, "Data loss. Failed to merge raw event metadata. appId"

    .line 3016
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 3017
    invoke-virtual {v8, v10, v11, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_212
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_201 .. :try_end_212} :catch_218
    .catchall {:try_start_201 .. :try_end_212} :catchall_1224

    if-eqz v5, :cond_23f

    .line 3019
    :try_start_214
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_217
    .catchall {:try_start_214 .. :try_end_217} :catchall_122c

    goto :goto_23f

    :catch_218
    move-exception v0

    goto :goto_21d

    :catch_21a
    move-exception v0

    move-object/from16 v9, p1

    :goto_21d
    move-object v7, v0

    goto :goto_229

    :catchall_21f
    move-exception v0

    move-object v1, v0

    const/4 v5, 0x0

    goto/16 :goto_1226

    :catch_224
    move-exception v0

    move-object/from16 v9, p1

    move-object v7, v0

    const/4 v5, 0x0

    .line 3061
    :goto_229
    :try_start_229
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 3062
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v8, "Data loss. Error selecting raw event. appId"

    .line 3063
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23a
    .catchall {:try_start_229 .. :try_end_23a} :catchall_1224

    if-eqz v5, :cond_23f

    .line 3065
    :try_start_23c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3070
    :cond_23f
    :goto_23f
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    if-eqz v5, :cond_24e

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_24c

    goto :goto_24e

    :cond_24c
    const/4 v5, 0x0

    goto :goto_24f

    :cond_24e
    :goto_24e
    const/4 v5, 0x1

    :goto_24f
    if-nez v5, :cond_1214

    .line 3073
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3074
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v5

    .line 3075
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    .line 3082
    :goto_267
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_26d
    .catchall {:try_start_23c .. :try_end_26d} :catchall_122c

    const-string v15, "_fr"

    const-string v6, "_et"

    move/from16 v16, v10

    const-string v10, "_e"

    move/from16 p2, v11

    const-string v11, "_c"

    move-object/from16 v17, v6

    move-object/from16 p3, v7

    if-ge v9, v14, :cond_885

    .line 3084
    :try_start_27f
    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    .line 3085
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v14

    .line 3086
    move-object/from16 v18, v14

    check-cast v18, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3087
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3088
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    move/from16 v20, v9

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzhl;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_2a5
    .catchall {:try_start_27f .. :try_end_2a5} :catchall_122c

    const-string v7, "_err"

    if-eqz v6, :cond_325

    .line 3089
    :try_start_2a9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 3090
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v9, "Dropping blocked raw event. appId"

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3091
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 3092
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v11

    .line 3093
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3094
    invoke-virtual {v6, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3096
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v6

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzhl;->zzl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f1

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v6

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzhl;->zzn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2ef

    goto :goto_2f1

    :cond_2ef
    const/4 v6, 0x0

    goto :goto_2f2

    :cond_2f1
    :goto_2f1
    const/4 v6, 0x1

    :goto_2f2
    if-nez v6, :cond_318

    .line 3098
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_318

    .line 3099
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3100
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0xb

    const-string v27, "_ev"

    .line 3101
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v24, v6

    .line 3102
    invoke-static/range {v24 .. v29}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_318
    move/from16 v11, p2

    move-object/from16 v7, p3

    move-object/from16 v22, v2

    move-object v15, v3

    move/from16 v10, v16

    move/from16 v6, v20

    goto/16 :goto_87e

    .line 3104
    :cond_325
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v6

    .line 3105
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_397

    .line 3106
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v9, "Renaming ad_impression to _ai"

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 3108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_397

    const/4 v6, 0x0

    .line 3109
    :goto_34f
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza()I

    move-result v9

    if-ge v6, v9, :cond_397

    const-string v9, "ad_platform"

    .line 3110
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v21

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_392

    .line 3111
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_392

    const-string v2, "admob"

    .line 3112
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_392

    .line 3113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 3114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v9, "AdMob ad impression logged from app. Potentially duplicative."

    .line 3115
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    :cond_392
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v22

    goto :goto_34f

    :cond_397
    move-object/from16 v22, v2

    .line 3118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v2

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3119
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3df

    .line 3120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v6

    .line 3121
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3122
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    move-object/from16 v21, v3

    const v3, 0x17333

    if-eq v9, v3, :cond_3c3

    goto :goto_3cd

    :cond_3c3
    const-string v3, "_ui"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3cd

    const/4 v3, 0x0

    goto :goto_3ce

    :cond_3cd
    :goto_3cd
    const/4 v3, -0x1

    :goto_3ce
    if-eqz v3, :cond_3d2

    const/4 v3, 0x0

    goto :goto_3d3

    :cond_3d2
    const/4 v3, 0x1

    :goto_3d3
    if-eqz v3, :cond_3d6

    goto :goto_3e1

    :cond_3d6
    move-object/from16 v24, v5

    move-object v6, v8

    move/from16 v23, v12

    move/from16 v25, v13

    goto/16 :goto_5bd

    :cond_3df
    move-object/from16 v21, v3

    :goto_3e1
    move/from16 v23, v12

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 3128
    :goto_3e6
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza()I

    move-result v12
    :try_end_3ea
    .catchall {:try_start_2a9 .. :try_end_3ea} :catchall_122c

    move-object/from16 v24, v5

    const-string v5, "_r"

    if-ge v9, v12, :cond_456

    .line 3129
    :try_start_3f0
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_420

    .line 3131
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v3

    .line 3132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v3

    .line 3133
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move/from16 v25, v13

    const-wide/16 v12, 0x1

    .line 3134
    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 3135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3137
    invoke-virtual {v14, v9, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    const/4 v3, 0x1

    goto :goto_44f

    :cond_420
    move/from16 v25, v13

    .line 3138
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44f

    .line 3140
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v5

    .line 3141
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v5

    .line 3142
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    const-wide/16 v12, 0x1

    .line 3143
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v5

    .line 3144
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3146
    invoke-virtual {v14, v9, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    const/4 v6, 0x1

    :cond_44f
    :goto_44f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v24

    move/from16 v13, v25

    goto :goto_3e6

    :cond_456
    move/from16 v25, v13

    if-nez v3, :cond_488

    if-eqz v2, :cond_488

    .line 3149
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 3150
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v9, "Marking event as conversion"

    .line 3151
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v12

    .line 3152
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3153
    invoke-virtual {v3, v9, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3155
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 3156
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    const-wide/16 v12, 0x1

    .line 3157
    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 3158
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    :cond_488
    if-nez v6, :cond_4b6

    .line 3160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 3161
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v6, "Marking event as real-time"

    .line 3162
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v9

    .line 3163
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3164
    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    const-wide/16 v12, 0x1

    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 3167
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3170
    :cond_4b6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v26

    .line 3171
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v27

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3172
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 3173
    invoke-virtual/range {v26 .. v36}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 3174
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    .line 3175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;)I

    move-result v3

    move-object v6, v8

    int-to-long v8, v3

    cmp-long v3, v12, v8

    if-lez v3, :cond_4f0

    .line 3176
    invoke-static {v14, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)V

    goto :goto_4f2

    :cond_4f0
    const/16 v16, 0x1

    .line 3178
    :goto_4f2
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5bd

    if-eqz v2, :cond_5bd

    .line 3181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v26

    .line 3182
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v27

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3183
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 3184
    invoke-virtual/range {v26 .. v36}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 3185
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:J

    .line 3186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v5

    .line 3187
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzn:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v3

    int-to-long v12, v3

    cmp-long v3, v8, v12

    if-lez v3, :cond_5bd

    .line 3189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 3190
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v5, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3191
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 3192
    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3196
    :goto_550
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza()I

    move-result v12

    if-ge v9, v12, :cond_57e

    .line 3197
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v12

    .line 3198
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_570

    .line 3200
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v3

    .line 3201
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-object v5, v3

    move v3, v9

    goto :goto_57b

    .line 3203
    :cond_570
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_57b

    const/4 v8, 0x1

    :cond_57b
    :goto_57b
    add-int/lit8 v9, v9, 0x1

    goto :goto_550

    :cond_57e
    if-eqz v8, :cond_586

    if-eqz v5, :cond_586

    .line 3208
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_5bd

    :cond_586
    if-eqz v5, :cond_5a6

    .line 3212
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzid;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    .line 3213
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v5

    const-wide/16 v7, 0xa

    .line 3214
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v5

    .line 3215
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3216
    invoke-virtual {v14, v3, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_5bd

    .line 3218
    :cond_5a6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 3219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v5, "Did not find conversion parameter. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3220
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 3221
    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5bd
    :goto_5bd
    if-eqz v2, :cond_67c

    .line 3224
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    .line 3227
    :goto_5cb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8
    :try_end_5cf
    .catchall {:try_start_3f0 .. :try_end_5cf} :catchall_122c

    const-string v9, "currency"

    const-string v12, "value"

    if-ge v3, v8, :cond_5fb

    .line 3228
    :try_start_5d5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e7

    move v5, v3

    goto :goto_5f8

    .line 3230
    :cond_5e7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f8

    move v7, v3

    :cond_5f8
    :goto_5f8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5cb

    :cond_5fb
    const/4 v3, -0x1

    if-eq v5, v3, :cond_67d

    .line 3234
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v3

    if-nez v3, :cond_62f

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v3

    if-nez v3, :cond_62f

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Value must be specified with a numeric type."

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3238
    invoke-static {v14, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 3239
    invoke-static {v14, v2, v12}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;ILjava/lang/String;)V

    goto :goto_67c

    :cond_62f
    const/4 v3, -0x1

    if-ne v7, v3, :cond_635

    const/4 v2, 0x1

    const/4 v8, 0x3

    goto :goto_661

    .line 3244
    :cond_635
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v2

    .line 3245
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_648

    :goto_646
    const/4 v2, 0x1

    goto :goto_661

    :cond_648
    const/4 v7, 0x0

    .line 3247
    :goto_649
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_660

    .line 3248
    invoke-virtual {v2, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    .line 3249
    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-nez v13, :cond_65a

    goto :goto_646

    .line 3252
    :cond_65a
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v7, v12

    goto :goto_649

    :cond_660
    const/4 v2, 0x0

    :goto_661
    if-eqz v2, :cond_67e

    .line 3255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 3256
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v7, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 3257
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3260
    invoke-static {v14, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 3261
    invoke-static {v14, v2, v9}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;ILjava/lang/String;)V

    goto :goto_67e

    :cond_67c
    :goto_67c
    const/4 v3, -0x1

    :cond_67d
    const/4 v8, 0x3

    .line 3262
    :cond_67e
    :goto_67e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d9

    .line 3263
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-static {v2, v15}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v2

    if-nez v2, :cond_6d4

    if-eqz v6, :cond_6ca

    .line 3265
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v9

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v2, v9, v11

    if-gtz v2, :cond_6ca

    .line 3266
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzid;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3267
    invoke-direct {v1, v14, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Z

    move-result v5

    if-eqz v5, :cond_6ca

    move-object/from16 v5, v24

    move/from16 v7, v25

    .line 3270
    invoke-virtual {v5, v7, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move v13, v7

    move/from16 v12, v23

    :goto_6c6
    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_736

    :cond_6ca
    move-object/from16 v5, v24

    move/from16 v7, v25

    move/from16 v12, p2

    move v13, v7

    move-object v2, v14

    goto/16 :goto_736

    :cond_6d4
    move-object/from16 v5, v24

    move/from16 v7, v25

    goto :goto_730

    :cond_6d9
    move-object/from16 v5, v24

    move/from16 v7, v25

    const-string v2, "_vs"

    .line 3276
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_730

    .line 3277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move-object/from16 v9, v17

    invoke-static {v2, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v2

    if-nez v2, :cond_730

    if-eqz p3, :cond_727

    .line 3279
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v9

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v2, v9, v11

    if-gtz v2, :cond_727

    .line 3280
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/zzid;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3281
    invoke-direct {v1, v2, v14}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Z

    move-result v6

    if-eqz v6, :cond_727

    move/from16 v9, v23

    .line 3284
    invoke-virtual {v5, v9, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move v13, v7

    move v12, v9

    goto :goto_6c6

    :cond_727
    move/from16 v9, v23

    move/from16 v13, p2

    move-object/from16 v2, p3

    move v12, v9

    move-object v6, v14

    goto :goto_736

    :cond_730
    :goto_730
    move/from16 v9, v23

    move-object/from16 v2, p3

    move v13, v7

    move v12, v9

    .line 3290
    :goto_736
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza()I

    move-result v7

    if-eqz v7, :cond_85e

    .line 3291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v7

    const/4 v9, 0x0

    .line 3292
    :goto_748
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza()I

    move-result v10

    if-ge v9, v10, :cond_805

    .line 3293
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v10

    .line 3294
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, v21

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7d5

    .line 3295
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7d5

    .line 3296
    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v11

    .line 3297
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v10

    .line 3298
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Bundle;

    move-object/from16 p3, v2

    const/4 v8, 0x0

    .line 3299
    :goto_77b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_7cf

    .line 3300
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3301
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v6

    .line 3302
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-object/from16 v19, v2

    .line 3303
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v2

    .line 3304
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v17

    .line 3305
    move-object/from16 v21, v17

    check-cast v21, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-object/from16 v21, v10

    move-object/from16 v10, v17

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    invoke-direct {v1, v2, v10, v6, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object/from16 v2, v19

    move-object/from16 v10, v21

    goto :goto_79c

    :cond_7c4
    move-object/from16 v21, v10

    .line 3307
    aput-object v6, v3, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v18

    move-object/from16 v10, v21

    goto :goto_77b

    :cond_7cf
    move-object/from16 v18, v6

    .line 3309
    invoke-virtual {v7, v15, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_7f9

    :cond_7d5
    move-object/from16 p3, v2

    move-object/from16 v18, v6

    .line 3311
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f9

    .line 3313
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v2

    .line 3314
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v3

    .line 3315
    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3316
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 3317
    invoke-direct {v1, v2, v3, v7, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_7f9
    :goto_7f9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    move-object/from16 v21, v15

    move-object/from16 v6, v18

    const/4 v3, -0x1

    const/4 v8, 0x3

    goto/16 :goto_748

    :cond_805
    move-object/from16 p3, v2

    move-object/from16 v18, v6

    move-object/from16 v15, v21

    .line 3320
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v2

    .line 3322
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3323
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_81f
    :goto_81f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_848

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3324
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v9

    .line 3325
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_81f

    .line 3327
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Ljava/lang/Object;)V

    .line 3328
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81f

    .line 3331
    :cond_848
    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_850
    if-ge v6, v2, :cond_864

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3332
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_850

    :cond_85e
    move-object/from16 p3, v2

    move-object/from16 v18, v6

    move-object/from16 v15, v21

    .line 3334
    :cond_864
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzc:Ljava/util/List;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move/from16 v6, v20

    invoke-interface {v2, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, p2, 0x1

    .line 3336
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-object/from16 v7, p3

    move/from16 v10, v16

    move-object/from16 v8, v18

    :goto_87e
    add-int/lit8 v9, v6, 0x1

    move-object v3, v15

    move-object/from16 v2, v22

    goto/16 :goto_267

    :cond_885
    move-object/from16 v9, v17

    const-wide/16 v2, 0x0

    move/from16 v6, p2

    move-wide v12, v2

    const/4 v7, 0x0

    :goto_88d
    if-ge v7, v6, :cond_8da

    .line 3339
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move-result-object v8

    .line 3340
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8ae

    .line 3341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-static {v8, v15}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v14

    if-eqz v14, :cond_8ae

    .line 3342
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_8d7

    .line 3347
    :cond_8ae
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-static {v8, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v8

    if-eqz v8, :cond_8d7

    .line 3349
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v14

    if-eqz v14, :cond_8c6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_8c7

    :cond_8c6
    const/4 v8, 0x0

    :goto_8c7
    if-eqz v8, :cond_8d7

    .line 3350
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v14, v20, v2

    if-lez v14, :cond_8d7

    .line 3351
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v12, v12, v20

    :cond_8d7
    :goto_8d7
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_88d

    :cond_8da
    const/4 v6, 0x0

    .line 3353
    invoke-direct {v1, v5, v12, v13, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;JZ)V

    .line 3355
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8e6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_900

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v8, "_s"

    .line 3356
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_8fc
    .catchall {:try_start_5d5 .. :try_end_8fc} :catchall_122c

    if-eqz v7, :cond_8e6

    const/4 v6, 0x1

    goto :goto_901

    :cond_900
    const/4 v6, 0x0

    :goto_901
    const-string v7, "_se"

    if-eqz v6, :cond_910

    .line 3361
    :try_start_905
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    .line 3362
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v8

    .line 3363
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_910
    const-string v6, "_sid"

    .line 3365
    invoke-static {v5, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_91a

    const/4 v6, 0x1

    goto :goto_91b

    :cond_91a
    const/4 v6, 0x0

    :goto_91b
    if-eqz v6, :cond_922

    const/4 v6, 0x1

    .line 3367
    invoke-direct {v1, v5, v12, v13, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;JZ)V

    goto :goto_942

    .line 3369
    :cond_922
    invoke-static {v5, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_942

    .line 3371
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3372
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 3373
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v7, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3374
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 3375
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3376
    :cond_942
    :goto_942
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 3380
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-nez v7, :cond_96e

    .line 3382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 3383
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "Cannot fix consent fields without appInfo. appId"

    .line 3384
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_971

    .line 3386
    :cond_96e
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)V

    .line 3387
    :goto_971
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    move-result v6

    if-eqz v6, :cond_9b2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_9b2

    .line 3388
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    .line 3390
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3391
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 3392
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-nez v7, :cond_9af

    .line 3394
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 3395
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "Cannot populate ad_campaign_info without appInfo. appId"

    .line 3396
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3397
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9b2

    .line 3399
    :cond_9af
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)V

    :cond_9b2
    :goto_9b2
    const-wide v6, 0x7fffffffffffffffL

    .line 3401
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v6

    const-wide/high16 v7, -0x8000000000000000L

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    const/4 v6, 0x0

    .line 3402
    :goto_9c1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v7

    if-ge v6, v7, :cond_9f4

    .line 3403
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move-result-object v7

    .line 3404
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-gez v8, :cond_9de

    .line 3405
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3406
    :cond_9de
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-lez v8, :cond_9f1

    .line 3407
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_9f1
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c1

    .line 3409
    :cond_9f4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzs()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3410
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 3411
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v7

    if-eqz v7, :cond_a8c

    .line 3412
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_a8c

    .line 3413
    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3414
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3415
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzae()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v7

    .line 3416
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v6

    .line 3418
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v7

    .line 3419
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v8

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 3420
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v8

    if-nez v8, :cond_a58

    .line 3421
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v8

    if-eqz v8, :cond_a58

    .line 3422
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzq(Ljava/lang/String;)V

    goto :goto_a71

    .line 3423
    :cond_a58
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v8

    if-eqz v8, :cond_a71

    .line 3424
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v7

    if-nez v7, :cond_a71

    .line 3425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzr(Ljava/lang/String;)V

    .line 3427
    :cond_a71
    :goto_a71
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v7

    if-nez v7, :cond_a80

    .line 3428
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3429
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3430
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3431
    :cond_a80
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v7

    if-nez v7, :cond_a8c

    .line 3432
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3433
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3434
    :cond_a8c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v7

    if-eqz v7, :cond_c9b

    .line 3435
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_c9b

    .line 3436
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzos;->zzd(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c9b

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3437
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v7

    if-eqz v7, :cond_c9b

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3438
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzat()Z

    move-result v7

    if-eqz v7, :cond_c9b

    const/4 v7, 0x0

    .line 3439
    :goto_acc
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v8

    if-ge v7, v8, :cond_c9b

    .line 3440
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move-result-object v8

    .line 3441
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v8

    .line 3442
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3444
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_ae7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_aff

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3445
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ae7

    const/4 v9, 0x1

    goto :goto_b00

    :cond_aff
    const/4 v9, 0x0

    :goto_b00
    if-eqz v9, :cond_c97

    .line 3450
    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zza()I

    move-result v9

    .line 3451
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3452
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzbh;->zzax:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v10

    if-lt v9, v10, :cond_c8c

    .line 3454
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3455
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzbi:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 3456
    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v9

    if-lez v9, :cond_bff

    .line 3459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v24

    .line 3460
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v25

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3461
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    .line 3462
    invoke-virtual/range {v24 .. v34}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v10

    .line 3463
    iget-wide v12, v10, Lcom/google/android/gms/measurement/internal/zzaq;->zzg:J

    int-to-long v9, v9

    cmp-long v9, v12, v9

    if-lez v9, :cond_b70

    .line 3464
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v9

    const-string v10, "_tnr"

    .line 3465
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v9

    const-wide/16 v12, 0x1

    .line 3466
    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v9

    .line 3467
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3468
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto/16 :goto_c8c

    .line 3471
    :cond_b70
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzcj:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_ba4

    .line 3472
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzp()Ljava/lang/String;

    move-result-object v9

    .line 3473
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    const-string v12, "_tu"

    .line 3474
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    .line 3475
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    .line 3476
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3477
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_ba5

    :cond_ba4
    const/4 v9, 0x0

    .line 3478
    :goto_ba5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    const-string v12, "_tr"

    .line 3479
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    const-wide/16 v12, 0x1

    .line 3480
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    .line 3481
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3482
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3484
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3485
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzno;

    move-result-object v9

    if-eqz v9, :cond_c8c

    .line 3487
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v10

    .line 3488
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v10

    const-string v12, "Generated trigger URI. appId, uri"

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3489
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    .line 3490
    invoke-virtual {v10, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3491
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzno;)Z

    .line 3492
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c8c

    .line 3495
    :cond_bff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzcj:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_c33

    .line 3496
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzp()Ljava/lang/String;

    move-result-object v9

    .line 3497
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    const-string v12, "_tu"

    .line 3498
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    .line 3499
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    .line 3500
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3501
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_c34

    :cond_c33
    const/4 v9, 0x0

    .line 3502
    :goto_c34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    const-string v12, "_tr"

    .line 3503
    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    const-wide/16 v12, 0x1

    .line 3504
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v10

    .line 3505
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 3506
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3508
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3509
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzno;

    move-result-object v9

    if-eqz v9, :cond_c8c

    .line 3511
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v10

    .line 3512
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v10

    const-string v12, "Generated trigger URI. appId, uri"

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3513
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzno;->zza:Ljava/lang/String;

    .line 3514
    invoke-virtual {v10, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3515
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzno;)Z

    .line 3516
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3517
    :cond_c8c
    :goto_c8c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_c97
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_acc

    .line 3519
    :cond_c9b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v7

    if-eqz v7, :cond_ce2

    .line 3520
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v7

    if-eqz v7, :cond_ce2

    .line 3522
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v7

    .line 3523
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v8

    .line 3524
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v9

    .line 3525
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v10

    .line 3526
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzab()Ljava/util/List;

    move-result-object v11

    .line 3527
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3528
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 3529
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v6

    if-nez v6, :cond_cd9

    const/4 v14, 0x1

    goto :goto_cda

    :cond_cd9
    const/4 v14, 0x0

    .line 3530
    :goto_cda
    invoke-virtual/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v6

    .line 3531
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_d0d

    .line 3533
    :cond_ce2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v6

    .line 3534
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v7

    .line 3535
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v8

    .line 3536
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v9

    .line 3537
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzab()Ljava/util/List;

    move-result-object v10

    .line 3538
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 3539
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3540
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v7

    .line 3541
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3542
    :goto_d0d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zzk(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_105d

    .line 3544
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3545
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3546
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzos;->zzv()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v9, 0x0

    .line 3547
    :goto_d30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v10

    if-ge v9, v10, :cond_1026

    .line 3548
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move-result-object v10

    .line 3549
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v10

    .line 3550
    move-object v11, v10

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 3551
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_d4d
    .catchall {:try_start_905 .. :try_end_d4d} :catchall_122c

    const-string v12, "_sr"

    if-eqz v11, :cond_dd4

    .line 3553
    :try_start_d51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v13, "_en"

    invoke-static {v11, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3554
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzbb;

    if-nez v13, :cond_d85

    .line 3557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v13

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3558
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3559
    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v13

    if-eqz v13, :cond_d85

    .line 3561
    invoke-interface {v6, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d85
    if-eqz v13, :cond_dc8

    .line 3563
    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzi:Ljava/lang/Long;

    if-nez v11, :cond_dc8

    .line 3564
    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    if-eqz v11, :cond_da3

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v17, 0x1

    cmp-long v11, v14, v17

    if-lez v11, :cond_da3

    .line 3565
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    .line 3566
    invoke-static {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3567
    :cond_da3
    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    if-eqz v11, :cond_dbd

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    .line 3568
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_dbd

    .line 3569
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v11, "_efs"

    const-wide/16 v12, 0x1

    .line 3570
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3571
    :cond_dbd
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3572
    :cond_dc8
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :goto_dcb
    move-object v15, v4

    move-object v1, v5

    move-object/from16 p3, v8

    move v2, v9

    const-wide/16 v8, 0x1

    goto/16 :goto_1019

    .line 3575
    :cond_dd4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v11

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3576
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;)J

    move-result-wide v13

    .line 3577
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3, v13, v14}, Lcom/google/android/gms/measurement/internal/zzos;->zza(JJ)J

    move-result-wide v2

    .line 3579
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v15, "_dbg"

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3580
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_e5d

    if-nez v1, :cond_e06

    goto :goto_e5d

    .line 3582
    :cond_e06
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e0e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e5d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-object/from16 p3, v11

    .line 3583
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e5a

    .line 3584
    instance-of v11, v1, Ljava/lang/Long;

    if-eqz v11, :cond_e38

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e58

    :cond_e38
    instance-of v11, v1, Ljava/lang/String;

    if-eqz v11, :cond_e46

    .line 3585
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e58

    :cond_e46
    instance-of v11, v1, Ljava/lang/Double;

    if-eqz v11, :cond_e5d

    .line 3586
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e5d

    :cond_e58
    const/4 v1, 0x1

    goto :goto_e5e

    :cond_e5a
    move-object/from16 v11, p3

    goto :goto_e0e

    :cond_e5d
    :goto_e5d
    const/4 v1, 0x0

    :goto_e5e
    if-nez v1, :cond_e73

    .line 3592
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v1

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3593
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v11, v15}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_e74

    :cond_e73
    const/4 v1, 0x1

    :goto_e74
    if-gtz v1, :cond_e9b

    .line 3595
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 3596
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Sample rate must be positive. event, rate"

    .line 3597
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v11, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3598
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3599
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto/16 :goto_dcb

    .line 3601
    :cond_e9b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzbb;

    if-nez v11, :cond_efa

    .line 3604
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v20, v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v15, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v11

    if-nez v11, :cond_efc

    .line 3606
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v11

    .line 3607
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v11

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3608
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v14

    .line 3609
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v15

    .line 3610
    invoke-virtual {v11, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3611
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3612
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v25

    .line 3613
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v26

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    .line 3614
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v24, v11

    invoke-direct/range {v24 .. v40}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_efc

    :cond_efa
    move-wide/from16 v20, v13

    .line 3616
    :cond_efc
    :goto_efc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    const-string v14, "_eid"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_f13

    const/4 v14, 0x1

    goto :goto_f14

    :cond_f13
    const/4 v14, 0x0

    .line 3617
    :goto_f14
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v1, v15, :cond_f49

    .line 3619
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3620
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f44

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzbb;->zzi:Ljava/lang/Long;

    if-nez v1, :cond_f38

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzbb;->zzj:Ljava/lang/Long;

    if-nez v1, :cond_f38

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzbb;->zzk:Ljava/lang/Boolean;

    if-eqz v1, :cond_f44

    :cond_f38
    const/4 v1, 0x0

    .line 3621
    invoke-virtual {v11, v1, v1, v1}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3622
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3623
    :cond_f44
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto/16 :goto_dcb

    .line 3625
    :cond_f49
    invoke-virtual {v8, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_f8f

    .line 3626
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-object v15, v4

    move-object/from16 v24, v5

    int-to-long v4, v1

    .line 3627
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v12, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3628
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3629
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f77

    .line 3631
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v1, v4}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v11

    .line 3633
    :cond_f77
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3634
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3635
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p3, v8

    move v2, v9

    move-object/from16 v1, v24

    const-wide/16 v8, 0x1

    goto/16 :goto_1016

    :cond_f8f
    move-object v15, v4

    move-object/from16 v24, v5

    .line 3636
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzbb;->zzh:Ljava/lang/Long;

    if-eqz v4, :cond_fa1

    .line 3637
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/zzbb;->zzh:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 p3, v8

    move/from16 v17, v9

    goto :goto_fb2

    .line 3639
    :cond_fa1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzb()J

    move-result-wide v4

    move-object/from16 p3, v8

    move/from16 v17, v9

    move-wide/from16 v8, v20

    invoke-static {v4, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza(JJ)J

    move-result-wide v4

    :goto_fb2
    cmp-long v4, v4, v2

    if-eqz v4, :cond_ffe

    .line 3641
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v4, "_efs"

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v10, v4, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3642
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    int-to-long v4, v1

    .line 3643
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v12, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3644
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3645
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_fee

    .line 3647
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v11

    .line 3649
    :cond_fee
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    .line 3650
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    .line 3651
    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1012

    :cond_ffe
    const-wide/16 v8, 0x1

    .line 3652
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1012

    .line 3654
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11, v13, v2, v2}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v3

    .line 3655
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1012
    :goto_1012
    move/from16 v2, v17

    move-object/from16 v1, v24

    .line 3656
    :goto_1016
    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :goto_1019
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p3

    move-object v5, v1

    move v9, v2

    move-object v4, v15

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_d30

    :cond_1026
    move-object v15, v4

    move-object v1, v5

    .line 3658
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v3

    if-ge v2, v3, :cond_1039

    .line 3659
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3660
    :cond_1039
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1041
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_105b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3661
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    goto :goto_1041

    :cond_105b
    move-object v2, v15

    goto :goto_105f

    :cond_105d
    move-object v1, v5

    move-object v2, v4

    .line 3663
    :goto_105f
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v3

    .line 3664
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v4

    if-nez v4, :cond_1088

    .line 3666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 3667
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3668
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3669
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1114

    .line 3670
    :cond_1088
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v5

    if-lez v5, :cond_1114

    .line 3671
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_109c

    .line 3673
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_109f

    .line 3674
    :cond_109c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzo()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3675
    :goto_109f
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_10aa

    goto :goto_10ab

    :cond_10aa
    move-wide v5, v7

    :goto_10ab
    cmp-long v7, v5, v9

    if-eqz v7, :cond_10b3

    .line 3679
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_10b6

    .line 3680
    :cond_10b3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzp()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3681
    :goto_10b6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result v5

    if-eqz v5, :cond_10e6

    .line 3682
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    if-eqz v5, :cond_10e6

    .line 3683
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10e6

    .line 3684
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    .line 3685
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_10e9

    .line 3686
    :cond_10e6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzap()V

    .line 3687
    :goto_10e9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3688
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    .line 3689
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 3690
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzg;->zzab()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1109

    .line 3692
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_110c

    .line 3693
    :cond_1109
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 3694
    :goto_110c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    const/4 v6, 0x0

    .line 3695
    invoke-virtual {v5, v4, v6, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 3696
    :cond_1114
    :goto_1114
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v4

    if-lez v4, :cond_1173

    .line 3698
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object v4

    if-eqz v4, :cond_1139

    .line 3699
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzr()Z

    move-result v5

    if-nez v5, :cond_1131

    goto :goto_1139

    .line 3706
    :cond_1131
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzc()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_1162

    .line 3700
    :cond_1139
    :goto_1139
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_114b

    const-wide/16 v4, -0x1

    .line 3701
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_1162

    .line 3702
    :cond_114b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 3703
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 3704
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3705
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3707
    :goto_1162
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    move/from16 v10, v16

    invoke-virtual {v4, v1, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk;Z)Z

    .line 3708
    :cond_1173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zznv$zza;->zzb:Ljava/util/List;

    .line 3709
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3710
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3711
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 3712
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 3713
    :goto_118a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_11a7

    if-eqz v5, :cond_1197

    const-string v6, ","

    .line 3715
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3716
    :cond_1197
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_118a

    :cond_11a7
    const-string v5, ")"

    .line 3718
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_events"

    .line 3720
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 3721
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_11da

    .line 3722
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 3723
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v5, "Deleted fewer rows from raw events table than expected"

    .line 3724
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3725
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3726
    invoke-virtual {v1, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3727
    :cond_11da
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    .line 3728
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_11e2
    .catchall {:try_start_d51 .. :try_end_11e2} :catchall_122c

    :try_start_11e2
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 3729
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11f0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11e2 .. :try_end_11f0} :catch_11f1
    .catchall {:try_start_11e2 .. :try_end_11f0} :catchall_122c

    goto :goto_1204

    :catch_11f1
    move-exception v0

    move-object v2, v0

    .line 3732
    :try_start_11f3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 3733
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    .line 3734
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3735
    :goto_1204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_120b
    .catchall {:try_start_11f3 .. :try_end_120b} :catchall_122c

    .line 3736
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    const/4 v1, 0x1

    return v1

    .line 3738
    :cond_1214
    :try_start_1214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_121b
    .catchall {:try_start_1214 .. :try_end_121b} :catchall_122c

    .line 3739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    const/4 v1, 0x0

    return v1

    :catchall_1224
    move-exception v0

    move-object v1, v0

    :goto_1226
    if-eqz v5, :cond_122b

    .line 3067
    :try_start_1228
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3068
    :cond_122b
    throw v1
    :try_end_122c
    .catchall {:try_start_1228 .. :try_end_122c} :catchall_122c

    :catchall_122c
    move-exception v0

    move-object v1, v0

    .line 3741
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 3742
    throw v1
.end method

.method private final zzaa()V
    .registers 6

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 491
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    if-eqz v0, :cond_14

    goto :goto_46

    .line 499
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    if-nez v0, :cond_26

    return-void

    .line 502
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 503
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2a

    .line 505
    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 492
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 494
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 495
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 496
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 497
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzab()V
    .registers 5

    .line 978
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 979
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 980
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 981
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Notifying app that trigger URIs are available. App ID"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 983
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v1

    .line 987
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_d

    .line 989
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zzac()V
    .registers 22

    move-object/from16 v0, p0

    .line 1903
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1904
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1905
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4d

    .line 1906
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 1907
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    sub-long/2addr v1, v5

    .line 1908
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4b

    .line 1910
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1911
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1912
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1913
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1914
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb()V

    .line 1915
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    return-void

    .line 1917
    :cond_4b
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    .line 1918
    :cond_4d
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_24e

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzad()Z

    move-result v1

    if-nez v1, :cond_5d

    goto/16 :goto_24e

    .line 1924
    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 1925
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1926
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzab:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v6, 0x0

    .line 1927
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1928
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1931
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzz()Z

    move-result v5

    if-nez v5, :cond_90

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzy()Z

    move-result v5

    if-eqz v5, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v5, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    const/4 v5, 0x1

    :goto_91
    if-eqz v5, :cond_d1

    .line 1933
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzo()Ljava/lang/String;

    move-result-object v10

    .line 1934
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bd

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bd

    .line 1935
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1936
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzw:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1937
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1938
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_e4

    .line 1940
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1941
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzv:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1942
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1943
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_e4

    .line 1946
    :cond_d1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1947
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzu:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1948
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1949
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1952
    :goto_e4
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1953
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzmw;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v12

    .line 1955
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1956
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzmw;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v14

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzal;->c_()J

    move-result-wide v9

    .line 1958
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->d_()J

    move-result-wide v6

    .line 1959
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_113

    :cond_110
    move-wide v10, v3

    goto/16 :goto_18d

    :cond_113
    sub-long/2addr v6, v1

    .line 1962
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 1963
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 1964
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 1965
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_139

    cmp-long v5, v8, v3

    if-lez v5, :cond_139

    .line 1968
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 1969
    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_147

    add-long v10, v8, v12

    :cond_147
    cmp-long v5, v1, v3

    if-eqz v5, :cond_18d

    cmp-long v5, v1, v6

    if-ltz v5, :cond_18d

    const/4 v5, 0x0

    .line 1973
    :goto_150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1974
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzad:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v7, 0x0

    .line 1975
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1976
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v9, 0x14

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_110

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v5

    .line 1979
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 1980
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzac:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1981
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1982
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-long/2addr v6, v12

    add-long/2addr v10, v6

    cmp-long v6, v10, v1

    if-lez v6, :cond_18a

    goto :goto_18d

    :cond_18a
    add-int/lit8 v5, v5, 0x1

    goto :goto_150

    :cond_18d
    :goto_18d
    cmp-long v1, v10, v3

    if-nez v1, :cond_1ad

    .line 1991
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 1992
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb()V

    .line 1993
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    return-void

    .line 1995
    :cond_1ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result v1

    if-nez v1, :cond_1d3

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 1997
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zza()V

    .line 1998
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    return-void

    .line 2001
    :cond_1d3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2002
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmw;->zzc:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v1

    .line 2003
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2004
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzs:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v6, 0x0

    .line 2005
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2006
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2008
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_1fe

    add-long/2addr v1, v5

    .line 2009
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2010
    :cond_1fe
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb()V

    .line 2011
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_235

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2014
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzx:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v2, 0x0

    .line 2015
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2016
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2019
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2020
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzmw;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 2021
    :cond_235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2022
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznq;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/zznq;->zza(J)V

    return-void

    .line 1919
    :cond_24e
    :goto_24e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 1920
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzy()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb()V

    .line 1921
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzz()Lcom/google/android/gms/measurement/internal/zznq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznq;->zzu()V

    return-void
.end method

.method private final zzad()Z
    .registers 2

    .line 3744
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3745
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 3746
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzx()Z

    move-result v0

    if-nez v0, :cond_25

    .line 3747
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->f_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    return v0

    :cond_25
    :goto_25
    const/4 v0, 0x1

    return v0
.end method

.method private final zzae()Z
    .registers 7

    .line 3749
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 3750
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzx:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3751
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v1

    .line 3756
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    .line 3757
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3758
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcf;->zza()Lcom/google/android/gms/internal/measurement/zzci;

    move-result-object v4

    const-string v5, "google_app_measurement.db"

    invoke-interface {v4, v0, v5}, Lcom/google/android/gms/internal/measurement/zzci;->zza(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3759
    :try_start_39
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzy:Ljava/nio/channels/FileChannel;

    .line 3760
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzx:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_5a

    .line 3762
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    return v1

    .line 3764
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_67} :catch_86
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_67} :catch_77
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_39 .. :try_end_67} :catch_68

    goto :goto_94

    :catch_68
    move-exception v0

    .line 3773
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :catch_77
    move-exception v0

    .line 3770
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :catch_86
    move-exception v0

    .line 3767
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_94
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 11

    .line 918
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 919
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object p1

    .line 920
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    .line 921
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 922
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 923
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    .line 924
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v1

    .line 925
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzgs;I)V

    .line 926
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object p1

    const-string v0, "_cmp"

    .line 928
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 929
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v1, "_cis"

    .line 930
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 931
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 932
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 933
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 934
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v3, "_lgclid"

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 935
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 936
    :cond_68
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 19

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 546
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 548
    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zza()Z

    move-result v1

    const-string v2, "If-None-Match"

    const-string v3, "If-Modified-Since"

    const-string v4, "Failed to parse config URL. Not fetching. appId"

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v8, "Fetching remote configuration"

    if-eqz v1, :cond_f0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    invoke-virtual {v9, v8, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object v8

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/measurement/internal/zzhl;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_9f

    .line 555
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_86

    .line 556
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 557
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9f

    if-nez v7, :cond_9c

    .line 561
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v7, v3

    .line 562
    :cond_9c
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    move-object v13, v7

    .line 563
    iput-boolean v5, v6, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v1

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzny;

    invoke-direct {v14, v6}, Lcom/google/android/gms/measurement/internal/zzny;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 566
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 567
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 568
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzns;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zznu;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/String;

    move-result-object v2

    .line 571
    :try_start_bf
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v11

    .line 572
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgw;

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object v8, v5

    move-object v9, v1

    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzgr;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgu;)V

    .line 574
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/lang/Runnable;)V
    :try_end_db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_db} :catch_dc
    .catch Ljava/net/MalformedURLException; {:try_start_bf .. :try_end_db} :catch_dc
    .catch Ljava/net/URISyntaxException; {:try_start_bf .. :try_end_db} :catch_dc

    return-void

    .line 577
    :catch_dc
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 578
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 583
    :cond_f0
    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznu;

    .line 584
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zznu;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/String;

    move-result-object v1

    .line 585
    :try_start_f6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    .line 586
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    invoke-virtual {v9, v8, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object v8

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzhl;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_149

    .line 592
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_131

    .line 593
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 594
    invoke-interface {v7, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzhl;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_149

    if-nez v7, :cond_146

    .line 598
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 599
    :cond_146
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_149
    move-object v15, v7

    .line 600
    iput-boolean v5, v6, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v11

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzod;

    invoke-direct {v2, v6}, Lcom/google/android/gms/measurement/internal/zzod;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 603
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 604
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 605
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzja;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzgw;

    const/4 v14, 0x0

    move-object v10, v5

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzgw;-><init>(Lcom/google/android/gms/measurement/internal/zzgr;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgu;)V

    .line 608
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/lang/Runnable;)V
    :try_end_171
    .catch Ljava/net/MalformedURLException; {:try_start_f6 .. :try_end_171} :catch_172

    return-void

    .line 611
    :catch_172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 612
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 614
    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;
    .registers 44

    move-object/from16 v1, p1

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v15, :cond_bf

    .line 173
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto/16 :goto_bf

    :cond_19
    move-object/from16 v14, p0

    .line 176
    invoke-direct {v14, v15}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 177
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_39

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    .line 180
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 182
    :cond_39
    new-instance v41, Lcom/google/android/gms/measurement/internal/zzo;

    move-object/from16 v0, v41

    .line 183
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v4

    .line 186
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v6

    .line 187
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v7

    .line 188
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v9

    const/4 v11, 0x0

    .line 189
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzar()Z

    move-result v12

    const/4 v13, 0x0

    .line 190
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    .line 191
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()J

    move-result-wide v16

    move-object/from16 v40, v15

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    .line 192
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result v20

    const/16 v21, 0x0

    .line 193
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v22

    .line 194
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v23

    .line 195
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v24

    .line 196
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzan()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    .line 197
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/zzje;->zzf()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    const/16 v30, 0x0

    .line 198
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzat()Z

    move-result v31

    .line 199
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v32

    .line 200
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v34

    .line 201
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/gms/measurement/internal/zzax;->zzf()Ljava/lang/String;

    move-result-object v35

    .line 202
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zza()I

    move-result v36

    .line 203
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()J

    move-result-wide v37

    .line 204
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzam()Ljava/lang/String;

    move-result-object v39

    .line 205
    invoke-virtual/range {v40 .. v40}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v40}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v41

    .line 174
    :cond_bf
    :goto_bf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_fx"

    const-string v5, "_sno"

    .line 2543
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2544
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2545
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 2547
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2548
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2549
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2550
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v9

    if-nez v9, :cond_2c

    return-void

    .line 2552
    :cond_2c
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v9, :cond_34

    .line 2553
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2555
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzhl;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v9, :cond_df

    .line 2556
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 2557
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    .line 2558
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2559
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v5

    .line 2560
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    .line 2561
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzhl;->zzl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 2564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/google/android/gms/measurement/internal/zzhl;->zzn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_77

    :cond_75
    const/4 v3, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v3, 0x1

    :goto_78
    if-nez v3, :cond_95

    .line 2565
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    .line 2566
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    const/16 v11, 0xb

    const-string v12, "_ev"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v10, v8

    move-object v4, v14

    move v14, v2

    .line 2567
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_96

    :cond_95
    move-object v4, v14

    :goto_96
    if-eqz v3, :cond_de

    .line 2569
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 2572
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 2574
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 2575
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2576
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzaa:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 2577
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2578
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-lez v3, :cond_de

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 2581
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_de
    return-void

    .line 2583
    :cond_df
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v2

    .line 2584
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v9

    .line 2585
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;)I

    move-result v10

    .line 2586
    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzgs;I)V

    .line 2587
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    .line 2588
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzas:Lcom/google/android/gms/measurement/internal/zzfz;

    const/16 v11, 0xa

    const/16 v12, 0x23

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;II)I

    move-result v9

    .line 2590
    new-instance v10, Ljava/util/TreeSet;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2591
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10f
    :goto_10f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_131

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "items"

    .line 2592
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10f

    .line 2593
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    .line 2594
    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 2595
    invoke-virtual {v12, v11, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza([Landroid/os/Parcelable;I)V

    goto :goto_10f

    .line 2597
    :cond_131
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zza()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v2

    .line 2598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_157

    .line 2599
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    .line 2600
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    .line 2601
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v11

    .line 2602
    invoke-virtual {v11, v2}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Logging event"

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2603
    :cond_157
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzow;->zza()Z

    move-result v9

    if-eqz v9, :cond_166

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzcd:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    .line 2604
    :cond_166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 2605
    :try_start_16d
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v9, "ecommerce_purchase"

    .line 2606
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2607
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_178
    .catchall {:try_start_16d .. :try_end_178} :catchall_a88

    const-string v11, "refund"

    if-nez v9, :cond_191

    :try_start_17c
    const-string v9, "purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2608
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_191

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2609
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18f

    goto :goto_191

    :cond_18f
    const/4 v9, 0x0

    goto :goto_192

    :cond_191
    :goto_191
    const/4 v9, 0x1

    :goto_192
    const-string v12, "_iap"

    .line 2610
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 2611
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_19a
    .catchall {:try_start_17c .. :try_end_19a} :catchall_a88

    if-nez v12, :cond_1a1

    if-eqz v9, :cond_19f

    goto :goto_1a1

    :cond_19f
    const/4 v12, 0x0

    goto :goto_1a2

    :cond_1a1
    :goto_1a1
    const/4 v12, 0x1

    :goto_1a2
    const-string v13, "value"

    if-eqz v12, :cond_367

    .line 2614
    :try_start_1a6
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v14, "currency"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzbe;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_211

    .line 2616
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzbe;->zza(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v19, v19, v21

    const-wide/16 v23, 0x0

    cmpl-double v9, v19, v23

    if-nez v9, :cond_1d6

    .line 2618
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    move-object v14, v11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v9, v10

    mul-double v19, v9, v21

    goto :goto_1d7

    :cond_1d6
    move-object v14, v11

    :goto_1d7
    const-wide/high16 v9, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v9, v19, v9

    if-gtz v9, :cond_1f1

    const-wide/high16 v9, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v9, v19, v9

    if-ltz v9, :cond_1f1

    .line 2620
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    .line 2621
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21b

    neg-long v9, v9

    goto :goto_21b

    .line 2623
    :cond_1f1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    .line 2624
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    const-string v10, "Data lost. Currency value is too big. appId"

    .line 2625
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2626
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 2627
    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v27, v4

    move-wide/from16 v24, v6

    move-object v7, v13

    move-object/from16 v26, v15

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto/16 :goto_356

    .line 2630
    :cond_211
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2631
    :cond_21b
    :goto_21b
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_34d

    .line 2632
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 2633
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_34d

    .line 2634
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "_ltv_"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2635
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    invoke-virtual {v11, v8, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v11

    if-eqz v11, :cond_281

    .line 2636
    iget-object v14, v11, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    instance-of v14, v14, Ljava/lang/Long;

    if-nez v14, :cond_24f

    goto :goto_281

    .line 2655
    :cond_24f
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 2656
    new-instance v21, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    .line 2657
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v22

    add-long v19, v19, v9

    .line 2658
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v9, v21

    move-object v10, v8

    const/4 v14, 0x0

    move-wide/from16 v24, v6

    move-object v7, v13

    const/4 v6, 0x1

    move-wide/from16 v13, v22

    move-object/from16 v26, v15

    move-object/from16 v15, v19

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    const/4 v6, 0x0

    goto/16 :goto_315

    :cond_281
    :goto_281
    move-wide/from16 v24, v6

    move-object v7, v13

    move-object/from16 v26, v15

    const/4 v6, 0x1

    .line 2637
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v11

    .line 2638
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v13

    .line 2639
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbh;->zzag:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v13, v8, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v13

    sub-int/2addr v13, v6

    .line 2641
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2642
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2643
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V
    :try_end_29f
    .catchall {:try_start_1a6 .. :try_end_29f} :catchall_a88

    .line 2644
    :try_start_29f
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 2645
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v15

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzdl:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_2b2

    const-string v6, "and name like \'!_ltv!_%\' escape \'!\'"

    goto :goto_2b4

    :cond_2b2
    const-string v6, "and name like \'_ltv_%\' "

    .line 2647
    :goto_2b4
    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_2b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29f .. :try_end_2b6} :catch_2e5
    .catchall {:try_start_29f .. :try_end_2b6} :catchall_a88

    move-object/from16 v27, v4

    :try_start_2b8
    const-string v4, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "order by set_timestamp desc limit ?,10);"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;
    :try_end_2ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b8 .. :try_end_2ce} :catch_2e3
    .catchall {:try_start_2b8 .. :try_end_2ce} :catchall_a88

    const/4 v15, 0x0

    :try_start_2cf
    aput-object v8, v6, v15

    const/16 v16, 0x1

    aput-object v8, v6, v16

    .line 2648
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x2

    aput-object v13, v6, v16

    .line 2649
    invoke-virtual {v14, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2cf .. :try_end_2e0} :catch_2e1
    .catchall {:try_start_2cf .. :try_end_2e0} :catchall_a88

    goto :goto_2fb

    :catch_2e1
    move-exception v0

    goto :goto_2e9

    :catch_2e3
    move-exception v0

    goto :goto_2e8

    :catch_2e5
    move-exception v0

    move-object/from16 v27, v4

    :goto_2e8
    const/4 v15, 0x0

    :goto_2e9
    move-object v4, v0

    .line 2652
    :try_start_2ea
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v11, "Error pruning currencies. appId"

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v11, v13, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2653
    :goto_2fb
    new-instance v21, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    .line 2654
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v9, v21

    move-object v10, v8

    move v6, v15

    move-object v15, v4

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v4, v21

    .line 2659
    :goto_315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    move-result v9

    if-nez v9, :cond_355

    .line 2660
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    .line 2661
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    const-string v10, "Too many unique user properties are set. Ignoring user property. appId"

    .line 2662
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2663
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v12

    .line 2664
    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 2665
    invoke-virtual {v9, v10, v11, v12, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2666
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v8

    .line 2667
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_355

    :cond_34d
    move-object/from16 v27, v4

    move-wide/from16 v24, v6

    move-object v7, v13

    move-object/from16 v26, v15

    const/4 v6, 0x0

    :cond_355
    :goto_355
    const/4 v13, 0x1

    :goto_356
    if-nez v13, :cond_36f

    .line 2670
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_35f
    .catchall {:try_start_2ea .. :try_end_35f} :catchall_a88

    .line 2671
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_367
    move-object/from16 v27, v4

    move-wide/from16 v24, v6

    move-object v7, v13

    move-object/from16 v26, v15

    const/4 v6, 0x0

    .line 2673
    :cond_36f
    :try_start_36f
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v4

    .line 2674
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 2675
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzbe;)J

    move-result-wide v9

    const-wide/16 v13, 0x1

    add-long v15, v9, v13

    .line 2677
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    .line 2678
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v10

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v12, v8

    move-object/from16 v23, v7

    move-wide v6, v13

    move-wide v13, v15

    move/from16 v15, v17

    move/from16 v16, v4

    move/from16 v17, v18

    move/from16 v18, v22

    .line 2679
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v9

    .line 2680
    iget-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    const-wide/16 v16, 0x3e8

    if-lez v12, :cond_3eb

    .line 2682
    rem-long v10, v10, v16

    cmp-long v2, v10, v6

    if-nez v2, :cond_3dc

    .line 2683
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 2684
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 2685
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:J

    .line 2686
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2687
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2688
    :cond_3dc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_3e3
    .catchall {:try_start_36f .. :try_end_3e3} :catchall_a88

    .line 2689
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_3eb
    if-eqz v4, :cond_443

    .line 2692
    :try_start_3ed
    iget-wide v10, v9, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2693
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzm:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v13, 0x0

    .line 2694
    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 2695
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v6, v12

    sub-long/2addr v10, v6

    cmp-long v6, v10, v14

    if-lez v6, :cond_444

    .line 2698
    rem-long v10, v10, v16

    const-wide/16 v3, 0x1

    cmp-long v3, v10, v3

    if-nez v3, :cond_424

    .line 2699
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 2700
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 2701
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v9, Lcom/google/android/gms/measurement/internal/zzaq;->zza:J

    .line 2702
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2703
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2704
    :cond_424
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    const/16 v11, 0x10

    const-string v12, "_ev"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    const/4 v14, 0x0

    move-object v10, v8

    .line 2705
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2706
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_43b
    .catchall {:try_start_3ed .. :try_end_43b} :catchall_a88

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :cond_443
    const/4 v13, 0x0

    :cond_444
    if-eqz v22, :cond_492

    .line 2710
    :try_start_446
    iget-wide v6, v9, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 2711
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2712
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzbh;->zzl:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v10

    const v11, 0xf4240

    .line 2713
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    .line 2714
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v6, v10

    cmp-long v10, v6, v14

    if-lez v10, :cond_492

    const-wide/16 v10, 0x1

    cmp-long v2, v6, v10

    if-nez v2, :cond_483

    .line 2718
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 2719
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 2720
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 2721
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2722
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2723
    :cond_483
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_48a
    .catchall {:try_start_446 .. :try_end_48a} :catchall_a88

    .line 2724
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    .line 2726
    :cond_492
    :try_start_492
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb()Landroid/os/Bundle;

    move-result-object v6

    .line 2727
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v7

    const-string v9, "_o"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2728
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzac:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_4ad
    .catchall {:try_start_492 .. :try_end_4ad} :catchall_a88

    const-string v12, "_r"

    if-eqz v7, :cond_4cb

    .line 2729
    :try_start_4b1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v7

    const-string v9, "_dbg"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v6, v9, v13}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2730
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v6, v12, v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4cb
    const-string v7, "_s"

    .line 2731
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f0

    .line 2733
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2734
    invoke-virtual {v7, v9, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v7

    if-eqz v7, :cond_4f0

    .line 2735
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_4f0

    .line 2736
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v9

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    invoke-virtual {v9, v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2737
    :cond_4f0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzdj:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v5

    if-eqz v5, :cond_528

    .line 2738
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    const-string v7, "am"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_528

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    const-string v7, "_ai"

    .line 2739
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_528

    move-object/from16 v5, v23

    .line 2740
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_528

    .line 2741
    instance-of v9, v7, Ljava/lang/String;
    :try_end_51a
    .catchall {:try_start_4b1 .. :try_end_51a} :catchall_a88

    if-eqz v9, :cond_528

    .line 2742
    :try_start_51c
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 2743
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2744
    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_528
    .catch Ljava/lang/NumberFormatException; {:try_start_51c .. :try_end_528} :catch_528
    .catchall {:try_start_51c .. :try_end_528} :catchall_a88

    .line 2747
    :catch_528
    :cond_528
    :try_start_528
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v5, v9, v14

    if-lez v5, :cond_549

    .line 2749
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    .line 2750
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v7, "Data lost. Too many events stored on disk, deleted. appId"

    .line 2751
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 2752
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2753
    invoke-virtual {v5, v7, v11, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2754
    :cond_549
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbc;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const-wide/16 v18, 0x0

    move-object v9, v5

    move-object v2, v12

    move-object v12, v8

    const/4 v7, 0x0

    move-wide/from16 v16, v18

    move-object/from16 v18, v6

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 2755
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v6

    if-nez v6, :cond_5de

    .line 2757
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;)J

    move-result-wide v9

    .line 2758
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;)I

    move-result v6

    int-to-long v11, v6

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5c2

    if-eqz v4, :cond_5c2

    .line 2759
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 2760
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    .line 2761
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2762
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 2763
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2764
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2765
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2766
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v8

    .line 2767
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5ba
    .catchall {:try_start_528 .. :try_end_5ba} :catchall_a88

    .line 2768
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    .line 2770
    :cond_5c2
    :try_start_5c2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    iget-wide v9, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v16, v9

    move-object v9, v4

    move-object v10, v8

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_5ec

    .line 2772
    :cond_5de
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-wide v8, v6, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:J

    invoke-virtual {v5, v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzbc;->zza(Lcom/google/android/gms/measurement/internal/zzhy;J)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v5

    .line 2773
    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(J)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v4

    .line 2774
    :goto_5ec
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 2777
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2778
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2779
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2780
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2781
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2782
    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 2783
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzw()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v4

    const-string v8, "android"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v4

    .line 2784
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_62f

    .line 2785
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2786
    :cond_62f
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_63c

    .line 2787
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2788
    :cond_63c
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_649

    .line 2789
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2790
    :cond_649
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_656

    .line 2791
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2792
    :cond_656
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    const-wide/32 v10, -0x80000000

    cmp-long v8, v8, v10

    if-eqz v8, :cond_665

    .line 2793
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    long-to-int v8, v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2794
    :cond_665
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2795
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_677

    .line 2796
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2797
    :cond_677
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2798
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 2799
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v8

    .line 2800
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2801
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6ab

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6ab

    .line 2802
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2803
    :cond_6ab
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v9

    if-eqz v9, :cond_75d

    .line 2804
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_75d

    .line 2805
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzos;->zzd(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_75d

    .line 2806
    iget v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2807
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzab:J

    .line 2808
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v8

    const-wide/16 v11, 0x20

    const-wide/16 v13, 0x0

    if-nez v8, :cond_6e5

    cmp-long v8, v9, v13

    if-eqz v8, :cond_6e5

    const-wide/16 v15, -0x2

    and-long v8, v9, v15

    or-long v9, v8, v11

    :cond_6e5
    const-wide/16 v15, 0x1

    cmp-long v8, v9, v15

    if-nez v8, :cond_6ed

    move v8, v6

    goto :goto_6ee

    :cond_6ed
    const/4 v8, 0x0

    .line 2811
    :goto_6ee
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    cmp-long v8, v9, v13

    if-eqz v8, :cond_75f

    .line 2815
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zza()Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    move-result-object v8

    and-long v17, v9, v15

    cmp-long v15, v17, v13

    if-eqz v15, :cond_701

    move v15, v6

    goto :goto_702

    :cond_701
    const/4 v15, 0x0

    .line 2816
    :goto_702
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    const-wide/16 v15, 0x2

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_70e

    move v15, v6

    goto :goto_70f

    :cond_70e
    const/4 v15, 0x0

    .line 2817
    :goto_70f
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zze(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    const-wide/16 v15, 0x4

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_71b

    move v15, v6

    goto :goto_71c

    :cond_71b
    const/4 v15, 0x0

    .line 2818
    :goto_71c
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zzf(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    const-wide/16 v15, 0x8

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_728

    move v15, v6

    goto :goto_729

    :cond_728
    const/4 v15, 0x0

    .line 2819
    :goto_729
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zzg(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    const-wide/16 v15, 0x10

    and-long/2addr v15, v9

    cmp-long v15, v15, v13

    if-eqz v15, :cond_735

    move v15, v6

    goto :goto_736

    :cond_735
    const/4 v15, 0x0

    .line 2820
    :goto_736
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    and-long/2addr v11, v9

    cmp-long v11, v11, v13

    if-eqz v11, :cond_740

    move v11, v6

    goto :goto_741

    :cond_740
    const/4 v11, 0x0

    .line 2821
    :goto_741
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    const-wide/16 v11, 0x40

    and-long/2addr v9, v11

    cmp-long v9, v9, v13

    if-eqz v9, :cond_74d

    move v9, v6

    goto :goto_74e

    :cond_74d
    const/4 v9, 0x0

    .line 2822
    :goto_74e
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzc$zza;

    .line 2823
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    .line 2824
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzc;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    goto :goto_75f

    :cond_75d
    const-wide/16 v13, 0x0

    .line 2825
    :cond_75f
    :goto_75f
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    cmp-long v8, v8, v13

    if-eqz v8, :cond_76a

    .line 2826
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2827
    :cond_76a
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2828
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zzu()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_77c

    .line 2830
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2831
    :cond_77c
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2832
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 2833
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v8

    .line 2834
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v9

    if-eqz v9, :cond_85a

    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    if-eqz v9, :cond_85a

    .line 2836
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2837
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2838
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzmw;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_85a

    .line 2839
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_85a

    .line 2840
    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    if-eqz v10, :cond_85a

    .line 2841
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2842
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_7ca

    .line 2843
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2844
    :cond_7ca
    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    move-object/from16 v11, v27

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85a

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, "00000000-0000-0000-0000-000000000000"

    .line 2845
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_85a

    .line 2846
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v9

    if-eqz v9, :cond_85a

    .line 2847
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzau()Z

    move-result v10

    if-eqz v10, :cond_85a

    .line 2848
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v1, v10, v12, v7, v7}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2849
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2850
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v12

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbh;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v12
    :try_end_807
    .catchall {:try_start_5c2 .. :try_end_807} :catchall_a88

    const-string v15, "_pfo"

    if-eqz v12, :cond_82c

    .line 2851
    :try_start_80b
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzy()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_81c

    .line 2854
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2855
    invoke-virtual {v10, v15, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2856
    :cond_81c
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzz()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_84e

    const-string v7, "_uwa"

    .line 2858
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_84e

    .line 2859
    :cond_82c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcv:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v6

    if-eqz v6, :cond_84e

    .line 2861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x0

    .line 2863
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 2864
    invoke-virtual {v10, v15, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_84e
    :goto_84e
    const-wide/16 v6, 0x1

    .line 2865
    invoke-virtual {v10, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2866
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-interface {v6, v7, v11, v10}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2868
    :cond_85a
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v6

    .line 2869
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjd;->zzac()V

    .line 2870
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2871
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v6

    .line 2872
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhy;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v7

    .line 2873
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzjd;->zzac()V

    .line 2874
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2875
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v6

    .line 2876
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhy;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v7

    .line 2877
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaz;->zzc()J

    move-result-wide v9

    long-to-int v7, v9

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v6

    .line 2878
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzhy;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v7

    .line 2879
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzaz;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2880
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2881
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzac()Z

    move-result v6

    if-eqz v6, :cond_8ae

    .line 2882
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    const/4 v6, 0x0

    .line 2883
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8ae

    .line 2884
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2885
    :cond_8ae
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v6

    if-nez v6, :cond_91e

    .line 2887
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;)V

    .line 2888
    invoke-direct {v1, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    .line 2889
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 2890
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v7

    if-eqz v7, :cond_8e7

    .line 2893
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2894
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    iget-boolean v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    .line 2895
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzmw;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 2896
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    :cond_8e7
    const-wide/16 v9, 0x0

    .line 2897
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzq(J)V

    .line 2898
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzr(J)V

    .line 2899
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 2900
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    .line 2901
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    .line 2902
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    .line 2903
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzn(J)V

    .line 2904
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(J)V

    .line 2905
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    .line 2906
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzl(J)V

    .line 2907
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    const/4 v9, 0x0

    .line 2908
    invoke-virtual {v7, v6, v9, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    goto :goto_91f

    :cond_91e
    const/4 v9, 0x0

    .line 2909
    :goto_91f
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v7

    if-eqz v7, :cond_93c

    .line 2910
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_93c

    .line 2911
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2912
    :cond_93c
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_953

    .line 2913
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2914
    :cond_953
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzl(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move v12, v9

    .line 2915
    :goto_95e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_9c4

    .line 2916
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v8

    .line 2917
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v8

    .line 2918
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzop;

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzop;->zzd:J

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v8

    .line 2919
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v10

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    invoke-virtual {v10, v8, v11}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;Ljava/lang/Object;)V

    .line 2920
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    const-string v8, "_sid"

    .line 2921
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c1

    .line 2922
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v8, v10, v13

    if-eqz v8, :cond_9c1

    .line 2924
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v8

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/String;)J

    move-result-wide v10

    .line 2925
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()J

    move-result-wide v13

    cmp-long v8, v10, v13

    if-eqz v8, :cond_9c1

    .line 2926
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;
    :try_end_9c1
    .catchall {:try_start_80b .. :try_end_9c1} :catchall_a88

    :cond_9c1
    add-int/lit8 v12, v12, 0x1

    goto :goto_95e

    .line 2929
    :cond_9c4
    :try_start_9c4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk;)J

    move-result-wide v3
    :try_end_9d4
    .catch Ljava/io/IOException; {:try_start_9c4 .. :try_end_9d4} :catch_a40
    .catchall {:try_start_9c4 .. :try_end_9d4} :catchall_a88

    .line 2937
    :try_start_9d4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    .line 2938
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v7, :cond_a34

    .line 2939
    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzbe;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9e2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9f6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2940
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e2

    :goto_9f4
    const/4 v13, 0x1

    goto :goto_a35

    .line 2943
    :cond_9f6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v2

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2945
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v28

    .line 2946
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v29

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v7

    .line 2947
    invoke-virtual/range {v28 .. v38}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v7

    if-eqz v2, :cond_a34

    .line 2948
    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/zzaq;->zze:J

    .line 2949
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    cmp-long v2, v7, v10

    if-gez v2, :cond_a34

    goto :goto_9f4

    :cond_a34
    move v13, v9

    .line 2950
    :goto_a35
    invoke-virtual {v6, v5, v3, v4, v13}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzbc;JZ)Z

    move-result v2

    if-eqz v2, :cond_a57

    const-wide/16 v2, 0x0

    .line 2951
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    goto :goto_a57

    :catch_a40
    move-exception v0

    move-object v2, v0

    .line 2932
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 2933
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 2934
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2935
    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2952
    :cond_a57
    :goto_a57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_a5e
    .catchall {:try_start_9d4 .. :try_end_a5e} :catchall_a88

    .line 2953
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 2957
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 2958
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 2959
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 2960
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v24

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 2961
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_a88
    move-exception v0

    move-object v2, v0

    .line 2955
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 2956
    throw v2
.end method

.method private final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;
    .registers 4

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzax;

    if-nez v0, :cond_21

    .line 267
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzg(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method private final zze(Ljava/lang/String;)V
    .registers 13

    .line 2442
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2443
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v0, 0x1

    .line 2444
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    const/4 v1, 0x0

    .line 2445
    :try_start_e
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzls;->zzab()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 2447
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 2448
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Upload data called on the client side before use of service was decided"

    .line 2449
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_12b

    .line 2450
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2451
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2453
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2454
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Upload called in the client side when service should be used"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_12b

    .line 2455
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2456
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2458
    :cond_46
    :try_start_46
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_57

    .line 2459
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_12b

    .line 2460
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2461
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2463
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result v2

    if-nez v2, :cond_77

    .line 2464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Network not connected, ignoring upload request"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 2465
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_12b

    .line 2466
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2467
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2469
    :cond_77
    :try_start_77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 2470
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Upload queue has no batches for appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_12b

    .line 2471
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2472
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2474
    :cond_94
    :try_start_94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzj(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzoj;

    move-result-object v2
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_12b

    if-nez v2, :cond_a4

    .line 2476
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2477
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2479
    :cond_a4
    :try_start_a4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoj;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    move-result-object v3
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_12b

    if-nez v3, :cond_b0

    .line 2481
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2482
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2484
    :cond_b0
    :try_start_b0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Ljava/lang/String;

    move-result-object v4

    .line 2485
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzib;->zzca()[B

    move-result-object v8

    .line 2486
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    .line 2487
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v6, "Uploading data from upload queue. appId, uncompressed size, data"

    array-length v7, v8

    .line 2488
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2489
    invoke-virtual {v5, v6, p1, v7, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2490
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zza()Z

    move-result v4

    if-eqz v4, :cond_f3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_f3

    .line 2491
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 2492
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v0

    .line 2493
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoj;->zzb()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzob;

    invoke-direct {v5, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzob;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoj;)V

    .line 2494
    invoke-virtual {v0, p1, v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznw;Lcom/google/android/gms/internal/measurement/zzfy$zzj;Lcom/google/android/gms/measurement/internal/zzgu;)V
    :try_end_f2
    .catchall {:try_start_b0 .. :try_end_f2} :catchall_12b

    goto :goto_125

    .line 2495
    :cond_f3
    :try_start_f3
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 2496
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v5

    new-instance v7, Ljava/net/URL;

    .line 2497
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoj;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoj;->zze()Ljava/util/Map;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzoe;

    invoke-direct {v10, p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzoe;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoj;)V

    move-object v6, p1

    .line 2499
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgu;)V
    :try_end_10f
    .catch Ljava/net/MalformedURLException; {:try_start_f3 .. :try_end_10f} :catch_110
    .catchall {:try_start_f3 .. :try_end_10f} :catchall_12b

    goto :goto_125

    .line 2502
    :catch_110
    :try_start_110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 2503
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "Failed to parse URL. Not uploading MeasurementBatch. appId"

    .line 2504
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 2505
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzoj;->zzd()Ljava/lang/String;

    move-result-object v2

    .line 2506
    invoke-virtual {v0, v3, p1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_125
    .catchall {:try_start_110 .. :try_end_125} :catchall_12b

    .line 2507
    :goto_125
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2508
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_12b
    move-exception p1

    .line 2510
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2511
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 2512
    throw p1
.end method

.method private static zzh(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/Boolean;
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    .line 330
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 331
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    .line 332
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object p0

    .line 334
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzoa;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjh;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_34

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2e

    const/4 v2, 0x3

    if-eq p0, v2, :cond_29

    const/4 v1, 0x4

    if-eq p0, v1, :cond_34

    goto :goto_35

    .line 337
    :cond_29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_35

    :cond_2e
    const/4 p0, 0x0

    .line 335
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :cond_35
    :goto_35
    return-object v0
.end method

.method private static zzi(Lcom/google/android/gms/measurement/internal/zzo;)Z
    .registers 2

    .line 2963
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private final zzx()J
    .registers 8

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 42
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzmw;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_34

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzv()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 45
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmw;->zzf:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    :cond_34
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 48
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzy()Lcom/google/android/gms/measurement/internal/zzgy;
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Lcom/google/android/gms/measurement/internal/zzgy;

    if-eqz v0, :cond_5

    return-object v0

    .line 274
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzz()Lcom/google/android/gms/measurement/internal/zznq;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznq;

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzb()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v3}, Lcom/google/android/gms/measurement/internal/zzah;-><init>()V

    .line 62
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zzb()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    const-string v2, "_npa"

    .line 66
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 68
    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_5c

    .line 69
    :cond_53
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzah;

    invoke-direct {v1}, Lcom/google/android/gms/measurement/internal/zzah;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)I

    move-result p1

    :goto_5c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_62

    const-string p1, "denied"

    goto :goto_64

    :cond_62
    const-string p1, "granted"

    :goto_64
    const-string v1, "ad_personalization"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 15

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zznv$zzb;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/measurement/internal/zznv$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoi;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 84
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 86
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzje;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 89
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 90
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    .line 91
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzmw;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_56

    :cond_54
    const-string v3, ""

    :goto_56
    const/4 v4, 0x0

    if-nez v0, :cond_7a

    .line 94
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzhy;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 96
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    .line 97
    :cond_6f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v2

    if-eqz v2, :cond_13e

    .line 98
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    goto/16 :goto_13e

    .line 99
    :cond_7a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v5

    if-eqz v5, :cond_127

    if-eqz v3, :cond_127

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_127

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaj()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 102
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    .line 103
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    if-eqz v3, :cond_10f

    .line 104
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 105
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/zzmw;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v6, "00000000-0000-0000-0000-000000000000"

    .line 107
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10f

    if-nez v5, :cond_10f

    .line 108
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v3

    if-nez v3, :cond_c9

    const/4 v2, 0x1

    goto :goto_d1

    .line 112
    :cond_c9
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    move v2, v4

    .line 114
    :goto_d1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v6, "_id"

    .line 115
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v3

    if-eqz v3, :cond_13f

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v6, "_lair"

    .line 119
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v3

    if-nez v3, :cond_13f

    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 122
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v7, "auto"

    const-string v8, "_lair"

    const-wide/16 v11, 0x1

    .line 123
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    goto :goto_13f

    .line 125
    :cond_10f
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 127
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    goto :goto_13e

    .line 128
    :cond_127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 129
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 130
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzje;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    :cond_13e
    :goto_13e
    move v2, v4

    .line 131
    :cond_13f
    :goto_13f
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 132
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 133
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_156

    .line 134
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 135
    :cond_156
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_163

    .line 136
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzn(J)V

    .line 137
    :cond_163
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_170

    .line 138
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    .line 139
    :cond_170
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    .line 140
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    if-eqz v3, :cond_17e

    .line 141
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    .line 142
    :cond_17e
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(J)V

    .line 143
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    .line 144
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_195

    .line 145
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 146
    :cond_195
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    .line 147
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    .line 148
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzl(J)V

    .line 149
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzj(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v3

    if-eqz v3, :cond_1c1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbv:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    .line 151
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/util/List;)V

    goto :goto_1d6

    .line 152
    :cond_1c1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzny;->zza()Z

    move-result v3

    if-eqz v3, :cond_1d6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/util/List;)V

    .line 154
    :cond_1d6
    :goto_1d6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 157
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzw:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzby:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 159
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzk(Ljava/lang/String;)V

    .line 160
    :cond_20b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v1

    if-eqz v1, :cond_222

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_222

    .line 161
    iget v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(I)V

    .line 162
    :cond_222
    iget-wide v5, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzg;->zzt(J)V

    .line 163
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result p1

    if-eqz p1, :cond_24e

    .line 165
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_24e

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p1

    if-nez p1, :cond_246

    if-eqz v2, :cond_25b

    .line 167
    :cond_246
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    goto :goto_25b

    .line 168
    :cond_24e
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p1

    if-eqz p1, :cond_25b

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v0, v4, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    :cond_25b
    :goto_25b
    return-object v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzae;)V
    .registers 3

    .line 1579
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1581
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_11
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 13

    .line 1583
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1585
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1588
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1590
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 1592
    :cond_25
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_2d

    .line 1593
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1595
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1596
    :try_start_34
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 1597
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1599
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 1601
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1602
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1603
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v5

    .line 1604
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1605
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1606
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    if-eqz v1, :cond_85

    .line 1608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_85
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v1, :cond_df

    .line 1611
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    if-eqz v1, :cond_98

    .line 1612
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_99

    :cond_98
    const/4 v1, 0x0

    :goto_99
    move-object v4, v1

    .line 1614
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 1615
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1616
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object p1

    .line 1617
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_df

    .line 1619
    :cond_be
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 1620
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1621
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1622
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    .line 1623
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1624
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1625
    :cond_df
    :goto_df
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_e6
    .catchall {:try_start_34 .. :try_end_e6} :catchall_ee

    .line 1626
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_ee
    move-exception p1

    .line 1628
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1629
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 732
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 737
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 738
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 739
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgs;

    move-result-object v3

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 743
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaf:Lcom/google/android/gms/measurement/internal/zzlk;

    if-eqz v4, :cond_39

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzag:Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 744
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_39

    .line 746
    :cond_36
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaf:Lcom/google/android/gms/measurement/internal/zzlk;

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v4, 0x0

    .line 747
    :goto_3a
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzgs;->zzc:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-static {v4, v5, v12}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzlk;Landroid/os/Bundle;Z)V

    .line 748
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zza()Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v3

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v4

    if-nez v4, :cond_4e

    return-void

    .line 751
    :cond_4e
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v4, :cond_56

    .line 752
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 754
    :cond_56
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    if-eqz v4, :cond_99

    .line 755
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 756
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzb:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzbe;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ga_safelisted"

    const-wide/16 v6, 0x1

    .line 757
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 758
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    goto :goto_9a

    .line 760
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 762
    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_99
    move-object v13, v3

    .line 764
    :goto_9a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 766
    :try_start_a1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 767
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 768
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 769
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-gez v4, :cond_d0

    .line 771
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 772
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v6, "Invalid time querying timed out conditional properties"

    .line 773
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 774
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 775
    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 776
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_e0

    :cond_d0
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v12

    .line 778
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    .line 779
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 780
    :goto_e0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e4
    :goto_e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v6, :cond_e4

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 783
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v8, "User property timed out"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 784
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v15

    .line 785
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 786
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 787
    invoke-virtual {v7, v8, v9, v14, v15}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 788
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzae;->zzg:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v7, :cond_123

    .line 789
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzae;->zzg:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v7, v8, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    invoke-direct {v1, v7, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 790
    :cond_123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_e4

    .line 793
    :cond_130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 794
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 795
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 796
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    if-gez v4, :cond_159

    .line 798
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 799
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v6, "Invalid time querying expired conditional properties"

    .line 800
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 801
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 802
    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 803
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_16a

    :cond_159
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v12

    .line 805
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 806
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 808
    :goto_16a
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 809
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_177
    :goto_177
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v7, :cond_177

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 812
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v14, v7, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 813
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v15

    .line 814
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 815
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 816
    invoke-virtual {v8, v9, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v5, :cond_1bc

    .line 819
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzk:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_1bc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v5, v2, v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_177

    .line 822
    :cond_1c9
    move-object v3, v6

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v12

    :goto_1d1
    if-ge v5, v3, :cond_1e4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 823
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v8, v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    invoke-direct {v1, v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_1d1

    .line 826
    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 827
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 828
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 830
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    if-gez v4, :cond_21a

    .line 832
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 833
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v6, "Invalid time querying triggered conditional properties"

    .line 834
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 835
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 837
    invoke-virtual {v4, v6, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_22f

    :cond_21a
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v12

    const/4 v2, 0x1

    aput-object v5, v6, v2

    .line 840
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v6, v5

    .line 841
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 843
    :goto_22f
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 844
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23c
    :goto_23c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzae;

    if-eqz v15, :cond_23c

    .line 846
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 847
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 848
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 849
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v3, v9

    move-wide v7, v10

    move-object v12, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    move-result v3

    if-eqz v3, :cond_293

    .line 852
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 853
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 854
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 855
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 856
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b4

    .line 857
    :cond_293
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 858
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 859
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 860
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 861
    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 862
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 863
    :goto_2b4
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz v3, :cond_2bd

    .line 864
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_2bd
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzon;

    invoke-direct {v3, v12}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Lcom/google/android/gms/measurement/internal/zzop;)V

    iput-object v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    const/4 v3, 0x1

    .line 866
    iput-boolean v3, v15, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzae;)Z

    const/4 v12, 0x0

    goto/16 :goto_23c

    .line 869
    :cond_2d1
    invoke-direct {v1, v13, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 870
    move-object v2, v14

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_2dc
    if-ge v12, v2, :cond_2ef

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzbf;

    .line 871
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-direct {v4, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_2dc

    .line 873
    :cond_2ef
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_2f6
    .catchall {:try_start_a1 .. :try_end_2f6} :catchall_2fe

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_2fe
    move-exception v0

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 877
    throw v0
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V
    .registers 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 878
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v15

    if-eqz v15, :cond_e3

    .line 879
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_e3

    .line 882
    :cond_1c
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3e

    const-string v2, "_ui"

    .line 884
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_56

    .line 886
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_56

    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 888
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    .line 889
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 890
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 892
    :cond_56
    :goto_56
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzo;

    move-object v2, v14

    .line 893
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v4

    .line 894
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v5

    .line 895
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v6

    .line 896
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()Ljava/lang/String;

    move-result-object v8

    .line 897
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v9

    .line 898
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 899
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzg;->zzar()Z

    move-result v16

    move-object/from16 v43, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v42, v15

    move/from16 v15, v16

    .line 900
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Ljava/lang/String;

    move-result-object v16

    .line 901
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 902
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzaq()Z

    move-result v22

    const/16 v23, 0x0

    .line 903
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v24

    .line 904
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v25

    .line 905
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v26

    .line 906
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzan()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    .line 907
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzje;->zzf()Ljava/lang/String;

    move-result-object v30

    const-string v31, ""

    const/16 v32, 0x0

    .line 908
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzat()Z

    move-result v33

    .line 909
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzw()J

    move-result-wide v34

    .line 910
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v36

    .line 911
    invoke-direct {v0, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/google/android/gms/measurement/internal/zzax;->zzf()Ljava/lang/String;

    move-result-object v37

    .line 912
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zza()I

    move-result v38

    .line 913
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()J

    move-result-wide v39

    .line 914
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzam()Ljava/lang/String;

    move-result-object v41

    .line 915
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gms/measurement/internal/zzg;->zzak()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v42}, Lcom/google/android/gms/measurement/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v43

    .line 916
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void

    .line 880
    :cond_e3
    :goto_e3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)V
    .registers 10

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 618
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 620
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 621
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 624
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 625
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v1

    .line 626
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzoa;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjh;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_41

    if-eq v2, v3, :cond_41

    .line 633
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_52

    .line 629
    :cond_41
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 630
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v6

    .line 631
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;I)V

    goto :goto_52

    .line 627
    :cond_4b
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzak;->zzh:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 634
    :goto_52
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzoa;->zza:[I

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzd()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzjh;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_76

    if-eq v2, v4, :cond_6c

    if-eq v2, v3, :cond_6c

    .line 641
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzi:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_7d

    .line 637
    :cond_6c
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    .line 638
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzje;->zza()I

    move-result v1

    .line 639
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;I)V

    goto :goto_7d

    .line 635
    :cond_76
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzh:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 642
    :goto_7d
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 645
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 647
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v3

    .line 648
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;Lcom/google/android/gms/measurement/internal/zzje;Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v1

    .line 649
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zzd()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 650
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 651
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzax;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 654
    :cond_b9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 655
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 657
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzab()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 658
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cb

    goto :goto_e5

    :cond_e4
    const/4 v2, 0x0

    :goto_e5
    if-eqz v2, :cond_161

    .line 663
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;)Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzak;->zza:Lcom/google/android/gms/measurement/internal/zzak;

    if-ne v1, v4, :cond_1a0

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    .line 666
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v4

    .line 667
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v1

    if-eqz v1, :cond_12e

    const-string v2, "tcf"

    .line 669
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_112

    .line 670
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzg:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto/16 :goto_1a0

    :cond_112
    const-string v2, "app"

    .line 672
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 673
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzf:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto/16 :goto_1a0

    .line 675
    :cond_125
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzd:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto/16 :goto_1a0

    .line 677
    :cond_12e
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzx()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_159

    .line 678
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_142

    .line 679
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_159

    :cond_142
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v3, :cond_151

    .line 680
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_151

    goto :goto_159

    .line 682
    :cond_151
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzd:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_1a0

    .line 681
    :cond_159
    :goto_159
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzak;->zzf:Lcom/google/android/gms/measurement/internal/zzak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzje$zza;Lcom/google/android/gms/measurement/internal/zzak;)V

    goto :goto_1a0

    .line 684
    :cond_161
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)I

    move-result v1

    .line 686
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v2

    .line 687
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v2

    .line 688
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v2

    int-to-long v3, v1

    .line 689
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v2

    .line 690
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 691
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 692
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "non_personalized_ads(_npa)"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Setting user property"

    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    :cond_1a0
    :goto_1a0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzah;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 694
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzm(Ljava/lang/String;)Z

    move-result p1

    .line 695
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 696
    :goto_1b7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_222

    .line 697
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_tcf"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 698
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    .line 699
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    .line 700
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 701
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v3

    .line 702
    :goto_1e2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_21b

    .line 703
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_tcfd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_218

    .line 705
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/android/gms/measurement/internal/zznm;->zza(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 707
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 708
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 709
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p1

    .line 710
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_21b

    :cond_218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e2

    .line 713
    :cond_21b
    :goto_21b
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    return-void

    :cond_21f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b7

    :cond_222
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 16

    const-string v0, "_id"

    .line 2040
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2041
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2042
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 2044
    :cond_13
    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v1, :cond_1b

    .line 2045
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2047
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x1

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eqz v5, :cond_51

    .line 2050
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 2051
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2052
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    .line 2053
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_44

    :cond_43
    move v8, v3

    .line 2054
    :goto_44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v6, "_ev"

    .line 2055
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2058
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_91

    .line 2061
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 2062
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    .line 2063
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 2064
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 2066
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_7b

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_83

    .line 2067
    :cond_7b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_83
    move v12, v3

    .line 2069
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    iget-object v8, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v10, "_ev"

    .line 2070
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2073
    :cond_91
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 2074
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/zzos;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a2

    return-void

    .line 2077
    :cond_a2
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    const-string v4, "_sid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 2078
    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    .line 2079
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2082
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    const-string v6, "_sno"

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v5

    if-eqz v5, :cond_d3

    .line 2083
    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_d3

    .line 2084
    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_106

    :cond_d3
    if-eqz v5, :cond_e4

    .line 2086
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 2087
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v9, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 2088
    invoke-virtual {v6, v9, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2090
    :cond_e4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    const-string v6, "_s"

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    if-eqz v2, :cond_104

    .line 2092
    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    .line 2093
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 2094
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v9, "Backfill the session number. Last used session number"

    .line 2095
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_106

    :cond_104
    const-wide/16 v5, 0x0

    :goto_106
    const-wide/16 v11, 0x1

    add-long/2addr v5, v11

    .line 2097
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v9, "_sno"

    .line 2098
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object v5, v2

    move-object v6, v9

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 2100
    :cond_11a
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2101
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    .line 2102
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    iget-wide v9, p1, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    move-object v5, v2

    move-object v11, v1

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    .line 2104
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    .line 2105
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v6

    .line 2106
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Setting user property"

    .line 2107
    invoke-virtual {v5, v7, v6, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 2109
    :try_start_157
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_180

    .line 2111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v5, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 2112
    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v0

    if-eqz v0, :cond_180

    .line 2113
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_180

    .line 2114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v5, "_lair"

    .line 2115
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :cond_180
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    move-result v0

    .line 2118
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b9

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/String;)J

    move-result-wide v4

    .line 2121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p1

    if-eqz p1, :cond_1b9

    .line 2123
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzs(J)V

    .line 2124
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 2125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    .line 2126
    invoke-virtual {v1, p1, v3, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 2127
    :cond_1b9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V

    if-nez v0, :cond_1ec

    .line 2129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 2130
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 2131
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    .line 2132
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 2133
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2135
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/measurement/internal/zzor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1ec
    .catchall {:try_start_157 .. :try_end_1ec} :catchall_1f4

    .line 2136
    :cond_1ec
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_1f4
    move-exception p1

    .line 2138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 2139
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .registers 3

    .line 445
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 446
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    if-nez v0, :cond_12

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    .line 448
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzoj;)V
    .registers 10

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v0, 0x0

    if-nez p4, :cond_13

    :try_start_d
    new-array p4, v0, [B

    goto :goto_13

    :catchall_10
    move-exception p1

    goto/16 :goto_f6

    :cond_13
    :goto_13
    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1b

    const/16 v1, 0xcc

    if-ne p2, v1, :cond_b3

    :cond_1b
    if-nez p3, :cond_b3

    if-eqz p5, :cond_7a

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p3

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzoj;->zza()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 1184
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1185
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1186
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result p5

    if-eqz p5, :cond_46

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p5

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p5, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p5

    if-eqz p5, :cond_7a

    .line 1188
    :cond_46
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p5

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1189
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v0
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_10

    :try_start_53
    const-string p4, "upload_queue"

    const-string v3, "rowid=?"

    .line 1190
    invoke-virtual {p5, p4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-eq p4, v1, :cond_7a

    .line 1192
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p4

    const-string p5, "Deleted fewer rows from upload_queue than expected"

    invoke-virtual {p4, p5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_6a} :catch_6b
    .catchall {:try_start_53 .. :try_end_6a} :catchall_10

    goto :goto_7a

    :catch_6b
    move-exception p1

    .line 1195
    :try_start_6c
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 1196
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Failed to delete a MeasurementBatch in a upload_queue table"

    .line 1197
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1198
    throw p1

    .line 1199
    :cond_7a
    :goto_7a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 1200
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string p4, "Successfully uploaded batch from upload queue. appId, status"

    .line 1201
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p2

    if-eqz p2, :cond_af

    .line 1203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzs(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_af

    .line 1204
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Ljava/lang/String;)V

    goto :goto_f0

    .line 1205
    :cond_af
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    goto :goto_f0

    .line 1206
    :cond_b3
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p4, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v2, 0x20

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-virtual {v1, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 1208
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Network upload failed. Will retry later. appId, status, error"

    .line 1210
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-nez p3, :cond_d9

    move-object p3, p4

    .line 1212
    :cond_d9
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p5, :cond_ed

    .line 1214
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzoj;->zza()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/Long;)V

    .line 1215
    :cond_ed
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_f0
    .catchall {:try_start_6c .. :try_end_f0} :catchall_10

    .line 1216
    :goto_f0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1217
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 1219
    :goto_f6
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1220
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 1221
    throw p1
.end method

.method final synthetic zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 6

    .line 976
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)V
    .registers 8

    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzg(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 509
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 510
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 511
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzj()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 512
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzs(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3f

    .line 513
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzy()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "."

    .line 515
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_3f

    const/4 v3, 0x0

    .line 517
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 518
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 519
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzt(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "_id"

    .line 521
    invoke-static {p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_54

    .line 523
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 524
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 525
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 526
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 527
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 528
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 529
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 531
    :cond_8a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;

    if-eqz v0, :cond_ad

    .line 532
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;->zzb:J

    .line 533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzaw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_b8

    .line 535
    :cond_ad
    new-instance v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zznv$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzoi;)V

    .line 536
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzae:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_b8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznv$zzb;->zza:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 538
    :cond_bd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzq(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 539
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_ca
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlk;)V
    .registers 4

    .line 1762
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1763
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzag:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p2, :cond_17

    .line 1764
    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzag:Ljava/lang/String;

    .line 1765
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzaf:Lcom/google/android/gms/measurement/internal/zzlk;

    :cond_17
    return-void
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 11

    .line 1639
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1640
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1641
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 1643
    :cond_11
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_19

    .line 1644
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1646
    :cond_19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "_npa"

    .line 1647
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    if-eqz v0, :cond_59

    .line 1648
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v1, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 1649
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v3, "_npa"

    .line 1650
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 1651
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    const-wide/16 v0, 0x1

    goto :goto_4b

    :cond_49
    const-wide/16 v0, 0x0

    :goto_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "auto"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    return-void

    .line 1654
    :cond_59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 1655
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    .line 1656
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    .line 1657
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 1658
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1659
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1660
    :try_start_77
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    const-string v0, "_id"

    .line 1661
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1662
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1663
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 1664
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :cond_93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1666
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1667
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V

    .line 1669
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 1670
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "User property removed"

    .line 1671
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    .line 1672
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1673
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c0
    .catchall {:try_start_77 .. :try_end_c0} :catchall_c8

    .line 1674
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_c8
    move-exception p1

    .line 1676
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1677
    throw p1
.end method

.method final zza(Z)V
    .registers 2

    .line 1074
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    return-void
.end method

.method final zza(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzj;",
            "Lcom/google/android/gms/measurement/internal/zznw;",
            ">;>;)V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v8, p5

    .line 1077
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1078
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v9, 0x0

    if-nez p4, :cond_17

    :try_start_14
    new-array v3, v9, [B

    goto :goto_19

    :cond_17
    move-object/from16 v3, p4

    .line 1081
    :goto_19
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/List;

    const/4 v11, 0x0

    .line 1082
    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    const/4 v12, 0x1

    if-eqz p1, :cond_b2

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_30

    const/16 v4, 0xcc

    if-ne v0, v4, :cond_34

    :cond_30
    if-nez v2, :cond_34

    goto/16 :goto_b2

    .line 1149
    :cond_34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zza()Z

    move-result v4
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_22f

    const-string v5, "Network upload failed. Will retry later. code, error"

    if-eqz v4, :cond_6d

    :try_start_3c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1150
    new-instance v4, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1151
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x20

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 1153
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    .line 1154
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1155
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7c

    .line 1157
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 1158
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    .line 1159
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1161
    :goto_7c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1162
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmw;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_95

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_94

    goto :goto_95

    :cond_94
    move v12, v9

    :cond_95
    :goto_95
    if-eqz v12, :cond_a6

    .line 1166
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1167
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zzc:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 1168
    :cond_a6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/util/List;)V

    .line 1169
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    goto/16 :goto_229

    .line 1084
    :cond_b2
    :goto_b2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Network upload successful with code"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c3
    .catchall {:try_start_3c .. :try_end_c3} :catchall_22f

    if-eqz p1, :cond_d4

    .line 1087
    :try_start_c5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1088
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmw;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 1089
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 1091
    :cond_d4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1092
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzmw;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v13, v14}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 1093
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    if-eqz p1, :cond_f9

    .line 1095
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 1096
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 1097
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1098
    invoke-virtual {v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_106

    .line 1099
    :cond_f9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Purged empty bundles"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 1100
    :goto_106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V
    :try_end_10d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c5 .. :try_end_10d} :catch_1fe
    .catchall {:try_start_c5 .. :try_end_10d} :catchall_22f

    .line 1101
    :try_start_10d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 1102
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1103
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 1104
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/zznw;

    .line 1105
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    .line 1106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznw;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 1107
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznw;->zzc()Ljava/util/Map;

    move-result-object v6

    .line 1108
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznw;->zza()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v7

    move-object v2, v3

    move-object/from16 v3, p5

    .line 1109
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zznt;)Z

    goto :goto_11d

    .line 1111
    :cond_149
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;
    :try_end_15a
    .catchall {:try_start_10d .. :try_end_15a} :catchall_1f5

    .line 1112
    :try_start_15a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1113
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1114
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1115
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v7, v12, [Ljava/lang/String;

    .line 1116
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9
    :try_end_174
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15a .. :try_end_174} :catch_196
    .catchall {:try_start_15a .. :try_end_174} :catchall_1f5

    :try_start_174
    const-string v5, "queue"

    const-string v6, "rowid=?"

    .line 1117
    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_17f

    goto :goto_14d

    .line 1119
    :cond_17f
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v5, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v5}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_187
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_174 .. :try_end_187} :catch_187
    .catchall {:try_start_174 .. :try_end_187} :catchall_1f5

    :catch_187
    move-exception v0

    .line 1122
    :try_start_188
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v5, "Failed to delete a bundle in a queue table"

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1123
    throw v0
    :try_end_196
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_188 .. :try_end_196} :catch_196
    .catchall {:try_start_188 .. :try_end_196} :catchall_1f5

    :catch_196
    move-exception v0

    .line 1125
    :try_start_197
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaa:Ljava/util/List;

    if-eqz v4, :cond_1a2

    .line 1126
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a2

    goto :goto_14d

    .line 1127
    :cond_1a2
    throw v0

    .line 1128
    :cond_1a3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_1aa
    .catchall {:try_start_197 .. :try_end_1aa} :catchall_1f5

    .line 1129
    :try_start_1aa
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1133
    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzaa:Ljava/util/List;

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1c7

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzad()Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzw()V

    goto :goto_1f2

    .line 1136
    :cond_1c7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 1137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzal;->zzs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 1139
    invoke-direct {p0, v8}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Ljava/lang/String;)V

    goto :goto_1f2

    :cond_1eb
    const-wide/16 v2, -0x1

    .line 1140
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 1141
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 1142
    :goto_1f2
    iput-wide v13, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    goto :goto_229

    :catchall_1f5
    move-exception v0

    .line 1131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1132
    throw v0
    :try_end_1fe
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1aa .. :try_end_1fe} :catch_1fe
    .catchall {:try_start_1aa .. :try_end_1fe} :catchall_22f

    :catch_1fe
    move-exception v0

    .line 1145
    :try_start_1ff
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    .line 1147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Disable upload, time"

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_229
    .catchall {:try_start_1ff .. :try_end_229} :catchall_22f

    .line 1170
    :goto_229
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1171
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_22f
    move-exception v0

    .line 1173
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 1174
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 1175
    throw v0
.end method

.method public final zzb()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;
    .registers 3

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzje;

    if-nez v0, :cond_23

    .line 284
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzi(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    if-nez v0, :cond_20

    .line 286
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzje;->zza:Lcom/google/android/gms/measurement/internal/zzje;

    .line 287
    :cond_20
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V

    :cond_23
    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/String;
    .registers 6

    .line 349
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzog;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzog;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 350
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhv;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 351
    :try_start_d
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_17} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_17} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 353
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 355
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 356
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzae;)V
    .registers 3

    .line 1816
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzo;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1818
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_11
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzae;Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 13

    .line 1820
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1822
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1826
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1827
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1828
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 1830
    :cond_2a
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v0, :cond_32

    .line 1831
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1833
    :cond_32
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzae;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzae;-><init>(Lcom/google/android/gms/measurement/internal/zzae;)V

    const/4 p1, 0x0

    .line 1834
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 1835
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1838
    :try_start_41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1839
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    .line 1840
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v1

    if-eqz v1, :cond_80

    .line 1841
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 1842
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 1843
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 1844
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    .line 1845
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    .line 1846
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    if-eqz v1, :cond_b9

    .line 1847
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    if-eqz v2, :cond_b9

    .line 1848
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    .line 1849
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    .line 1850
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzh:J

    .line 1851
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    .line 1852
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    .line 1853
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 1854
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 1855
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    goto :goto_dc

    .line 1856
    :cond_b9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 1857
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 1858
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzon;->zze:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    const/4 p1, 0x1

    .line 1859
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    .line 1861
    :cond_dc
    :goto_dc
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zze:Z

    if-eqz v1, :cond_15a

    .line 1862
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 1863
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzop;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1864
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzon;->zzb:J

    .line 1865
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzop;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1866
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzop;)Z

    move-result v1

    if-eqz v1, :cond_127

    .line 1868
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1869
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1870
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    .line 1871
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 1872
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_148

    .line 1873
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1874
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1875
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1876
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v4

    .line 1877
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzop;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    .line 1878
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_148
    if-eqz p1, :cond_15a

    .line 1879
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    if-eqz p1, :cond_15a

    .line 1880
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzi:Lcom/google/android/gms/measurement/internal/zzbf;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Lcom/google/android/gms/measurement/internal/zzbf;J)V

    .line 1881
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zznv;->zzc(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1882
    :cond_15a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzae;)Z

    move-result p1

    if-eqz p1, :cond_188

    .line 1884
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 1885
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1886
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    .line 1887
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 1888
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1889
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1af

    .line 1890
    :cond_188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 1891
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzae;->zza:Ljava/lang/String;

    .line 1892
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1893
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v2

    .line 1894
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzon;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzae;->zzc:Lcom/google/android/gms/measurement/internal/zzon;

    .line 1895
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzon;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 1896
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1897
    :goto_1af
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_1b6
    .catchall {:try_start_41 .. :try_end_1b6} :catchall_1be

    .line 1898
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_1be
    move-exception p1

    .line 1900
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1901
    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzg;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)V
    .registers 15

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1224
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1225
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    move-result-object v0

    .line 1226
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzav()[B

    move-result-object v1

    if-eqz v1, :cond_31

    .line 1228
    :try_start_14
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;
    :try_end_1a
    .catch Lcom/google/android/gms/internal/measurement/zzkb; {:try_start_14 .. :try_end_1a} :catch_1c

    move-object v0, v1

    goto :goto_31

    .line 1231
    :catch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1232
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 1233
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to parse locally stored ad campaign info. appId"

    .line 1234
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1235
    :cond_31
    :goto_31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    .line 1236
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_cmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "gclid"

    const-string v5, ""

    .line 1238
    invoke-static {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "gbraid"

    .line 1239
    invoke-static {v2, v6, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "gad_source"

    .line 1240
    invoke-static {v2, v7, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1241
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_39

    :cond_78
    const-string v7, "click_timestamp"

    const-wide/16 v8, 0x0

    .line 1242
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v2, v7, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_92

    .line 1244
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v10

    :cond_92
    const-string v7, "_cis"

    .line 1246
    invoke-static {v2, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v7, "referrer API v2"

    .line 1247
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_d8

    .line 1249
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzb()J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-lez v2, :cond_aa

    move v3, v7

    :cond_aa
    if-eqz v3, :cond_39

    .line 1251
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 1252
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto :goto_b9

    .line 1253
    :cond_b6
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    .line 1254
    :goto_b9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 1255
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto :goto_c6

    .line 1256
    :cond_c3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    .line 1257
    :goto_c6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1258
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzf()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto :goto_d3

    .line 1259
    :cond_d0
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    .line 1260
    :goto_d3
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto/16 :goto_39

    .line 1262
    :cond_d8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zza()J

    move-result-wide v8

    cmp-long v2, v10, v8

    if-lez v2, :cond_e1

    move v3, v7

    :cond_e1
    if-eqz v3, :cond_39

    .line 1264
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 1265
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto :goto_f0

    .line 1266
    :cond_ed
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    .line 1267
    :goto_f0
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 1268
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto :goto_fd

    .line 1269
    :cond_fa
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    .line 1270
    :goto_fd
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 1271
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto :goto_10a

    .line 1272
    :cond_107
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    .line 1273
    :goto_10a
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zza$zza;

    goto/16 :goto_39

    .line 1275
    :cond_10f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zza;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzjt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12c

    .line 1276
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 1277
    :cond_12c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfy$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzib;->zzca()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzg;->zza([B)V

    .line 1278
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzas()Z

    move-result p2

    if-eqz p2, :cond_148

    .line 1279
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    .line 1280
    invoke-virtual {p2, p1, v3, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    :cond_148
    return-void
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 992
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 993
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 994
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_12

    :try_start_10
    new-array p4, v0, [B

    .line 997
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 998
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_1e3

    .line 999
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_40

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_40

    if-ne p2, v3, :cond_44

    :cond_40
    if-nez p3, :cond_44

    move v2, v4

    goto :goto_45

    :cond_44
    move v2, v0

    :goto_45
    if-nez v1, :cond_5a

    .line 1002
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 1003
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 1004
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1c6

    :cond_5a
    const/16 v5, 0x194

    if-nez v2, :cond_ba

    if-ne p2, v5, :cond_61

    goto :goto_ba

    .line 1048
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzm(J)V

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p4

    .line 1050
    invoke-virtual {p4, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzi(Ljava/lang/String;)V

    .line 1054
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1055
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmw;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_a4

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v4, v0

    :cond_a4
    :goto_a4
    if-eqz v4, :cond_b5

    .line 1060
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1061
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzmw;->zzc:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 1062
    :cond_b5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    goto/16 :goto_1c6

    .line 1006
    :cond_ba
    :goto_ba
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zza()Z

    move-result p3
    :try_end_be
    .catchall {:try_start_2b .. :try_end_be} :catchall_1da

    const-string v2, "ETag"

    const-string v4, "Last-Modified"

    const/4 v6, 0x0

    if-eqz p3, :cond_da

    .line 1007
    :try_start_c5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p3

    if-eqz p3, :cond_da

    .line 1008
    invoke-static {p5, v4}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1009
    invoke-static {p5, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_10e

    :cond_da
    if-eqz p5, :cond_e3

    .line 1010
    invoke-interface {p5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_e4

    :cond_e3
    move-object p3, v6

    :goto_e4
    if-eqz p3, :cond_f3

    .line 1011
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f3

    .line 1012
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_f4

    :cond_f3
    move-object p3, v6

    :goto_f4
    if-eqz p5, :cond_fd

    .line 1014
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_fe

    :cond_fd
    move-object p5, v6

    :goto_fe
    if-eqz p5, :cond_10d

    .line 1015
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10d

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_10e

    :cond_10d
    move-object p5, v6

    :goto_10e
    if-eq p2, v5, :cond_12a

    if-ne p2, v3, :cond_113

    goto :goto_12a

    .line 1023
    :cond_113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v2

    invoke-virtual {v2, p1, p4, p3, p5}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_11b
    .catchall {:try_start_c5 .. :try_end_11b} :catchall_1da

    if-nez p3, :cond_14b

    .line 1024
    :try_start_11d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V
    :try_end_124
    .catchall {:try_start_11d .. :try_end_124} :catchall_1e3

    .line 1025
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1026
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 1017
    :cond_12a
    :goto_12a
    :try_start_12a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object p3

    if-nez p3, :cond_14b

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object p3

    invoke-virtual {p3, p1, v6, v6, v6}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_13c
    .catchall {:try_start_12a .. :try_end_13c} :catchall_1da

    if-nez p3, :cond_14b

    .line 1019
    :try_start_13e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_1e3

    .line 1020
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1021
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 1028
    :cond_14b
    :try_start_14b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    .line 1029
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p3

    .line 1030
    invoke-virtual {p3, v1, v0, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    if-ne p2, v5, :cond_16d

    .line 1032
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    .line 1033
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 1034
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_183

    .line 1035
    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    .line 1036
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 1037
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 1038
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1039
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1040
    :goto_183
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result p1

    if-eqz p1, :cond_197

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzad()Z

    move-result p1

    if-eqz p1, :cond_197

    .line 1041
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzw()V

    goto :goto_1c6

    .line 1042
    :cond_197
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/measurement/internal/zzbh;->zzcb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_1c3

    .line 1043
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result p1

    if-eqz p1, :cond_1c3

    .line 1044
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c3

    .line 1045
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Ljava/lang/String;)V

    goto :goto_1c6

    .line 1046
    :cond_1c3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    .line 1063
    :goto_1c6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_1cd
    .catchall {:try_start_14b .. :try_end_1cd} :catchall_1da

    .line 1064
    :try_start_1cd
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V
    :try_end_1d4
    .catchall {:try_start_1cd .. :try_end_1d4} :catchall_1e3

    .line 1068
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1069
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_1da
    move-exception p1

    .line 1066
    :try_start_1db
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1067
    throw p1
    :try_end_1e3
    .catchall {:try_start_1db .. :try_end_1e3} :catchall_1e3

    :catchall_1e3
    move-exception p1

    .line 1071
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzu:Z

    .line 1072
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 1073
    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzt;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 9

    .line 1283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1284
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1285
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1287
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 1289
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzbj:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 1290
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 1291
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzau:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result p1

    .line 1292
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzg()J

    move-result-wide v5

    sub-long/2addr v2, v5

    :goto_47
    if-ge v1, p1, :cond_6b

    .line 1294
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_6b

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 1297
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzh()J

    move-result-wide v2

    :goto_59
    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-gez v0, :cond_6b

    .line 1298
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 1299
    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_6b

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 1301
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbh;->zzbk:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 1302
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzab()V

    :cond_7a
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "com.android.vending"

    const-string v0, "_npa"

    const-string v7, "_uwa"

    const-string v8, "app_id=?"

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1307
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1309
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzi(Lcom/google/android/gms/measurement/internal/zzo;)Z

    move-result v9

    if-nez v9, :cond_2b

    return-void

    .line 1311
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-eqz v9, :cond_5f

    .line 1313
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5f

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 1314
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5f

    .line 1315
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v13

    .line 1317
    invoke-virtual {v13, v9, v12, v12}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzg;ZZ)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v9

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj(Ljava/lang/String;)V

    .line 1319
    :cond_5f
    iget-boolean v9, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-nez v9, :cond_67

    .line 1320
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 1322
    :cond_67
    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzl:J

    cmp-long v9, v13, v10

    if-nez v9, :cond_75

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v13

    .line 1326
    :cond_75
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhy;->zzg()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v9

    .line 1327
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1328
    iget v9, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzm:I

    const/4 v15, 0x1

    if-eqz v9, :cond_9d

    if-eq v9, v15, :cond_9d

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v16

    .line 1331
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v15

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1332
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1333
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "Incorrect app type, assuming installed app. appId, appType"

    .line 1334
    invoke-virtual {v15, v11, v10, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v9, v12

    .line 1336
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzp()V

    .line 1338
    :try_start_a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1339
    invoke-virtual {v10, v11, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzop;

    move-result-object v10

    .line 1340
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzh(Lcom/google/android/gms/measurement/internal/zzo;)Ljava/lang/Boolean;

    move-result-object v11

    move-wide/from16 v21, v13

    if-eqz v10, :cond_c3

    const-string v14, "auto"

    .line 1341
    iget-object v15, v10, Lcom/google/android/gms/measurement/internal/zzop;->zzb:Ljava/lang/String;

    .line 1342
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c1

    goto :goto_c3

    :cond_c1
    const/4 v11, 0x1

    goto :goto_f7

    :cond_c3
    :goto_c3
    if-eqz v11, :cond_f1

    .line 1344
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v16, "_npa"

    .line 1345
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_d2

    const-wide/16 v14, 0x1

    goto :goto_d4

    :cond_d2
    const-wide/16 v14, 0x0

    :goto_d4
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const/4 v11, 0x1

    move-object v15, v0

    move-wide/from16 v17, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_ed

    .line 1346
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzop;->zze:Ljava/lang/Object;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzon;->zzc:Ljava/lang/Long;

    .line 1347
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f7

    .line 1348
    :cond_ed
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_f7

    :cond_f1
    const/4 v11, 0x1

    if-eqz v10, :cond_f7

    .line 1350
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1352
    :cond_f7
    :goto_f7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_1c8

    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    .line 1355
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/String;

    move-result-object v15

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    .line 1356
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaa()Ljava/lang/String;

    move-result-object v12

    .line 1357
    invoke-static {v14, v15, v10, v12}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c8

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v10

    .line 1359
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v10

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    .line 1360
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1361
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v12

    .line 1363
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1364
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1365
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_144
    .catchall {:try_start_a4 .. :try_end_144} :catchall_535

    .line 1366
    :try_start_144
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v13, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    const-string v15, "events"

    .line 1368
    invoke-virtual {v0, v15, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v15, v14

    const-string v14, "user_attributes"

    .line 1369
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "conditional_properties"

    .line 1370
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "apps"

    .line 1371
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "raw_events"

    .line 1372
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "raw_events_metadata"

    .line 1373
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "event_filters"

    .line 1374
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "property_filters"

    .line 1375
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "audience_filter_values"

    .line 1376
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "consent_settings"

    .line 1377
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "default_event_params"

    .line 1378
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v15, v14

    const-string v14, "trigger_uris"

    .line 1379
    invoke-virtual {v0, v14, v8, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v15, v0

    if-lez v15, :cond_1c7

    .line 1381
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v8, v12, v13}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_144 .. :try_end_1b4} :catch_1b5
    .catchall {:try_start_144 .. :try_end_1b4} :catchall_535

    goto :goto_1c7

    :catch_1b5
    move-exception v0

    .line 1384
    :try_start_1b6
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v8

    .line 1385
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v8

    const-string v10, "Error deleting application data. appId, error"

    .line 1386
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v10, v12, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c7
    :goto_1c7
    const/4 v0, 0x0

    :cond_1c8
    if-eqz v0, :cond_221

    .line 1390
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v12

    const-wide/32 v14, -0x80000000

    cmp-long v8, v12, v14

    if-eqz v8, :cond_1e1

    .line 1391
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v12

    iget-wide v14, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    cmp-long v8, v12, v14

    if-eqz v8, :cond_1e1

    move v15, v11

    goto :goto_1e2

    :cond_1e1
    const/4 v15, 0x0

    .line 1392
    :goto_1e2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Ljava/lang/String;

    move-result-object v8

    .line 1394
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zze()J

    move-result-wide v12

    const-wide/32 v16, -0x80000000

    cmp-long v0, v12, v16

    if-nez v0, :cond_1fd

    if-eqz v8, :cond_1fd

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    .line 1395
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fd

    move v0, v11

    goto :goto_1fe

    :cond_1fd
    const/4 v0, 0x0

    :goto_1fe
    or-int/2addr v0, v15

    if-eqz v0, :cond_221

    .line 1397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v10, "_pv"

    .line 1398
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v16, "_au"

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v8

    move-object/from16 v17, v10

    move-wide/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 1400
    invoke-virtual {v1, v8, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1401
    :cond_221
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzo;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v9, :cond_233

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v10, "_f"

    .line 1406
    invoke-virtual {v0, v8, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    goto :goto_243

    :cond_233
    if-ne v9, v11, :cond_242

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const-string v10, "_v"

    .line 1410
    invoke-virtual {v0, v8, v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v0

    goto :goto_243

    :cond_242
    const/4 v0, 0x0

    :goto_243
    if-nez v0, :cond_507

    const-wide/32 v12, 0x36ee80

    .line 1412
    div-long v14, v21, v12
    :try_end_24a
    .catchall {:try_start_1b6 .. :try_end_24a} :catchall_535

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    mul-long/2addr v14, v12

    const-string v8, "_dac"

    const-string v10, "_et"

    const-string v12, "_r"

    const-string v13, "_c"

    if-nez v9, :cond_4b9

    .line 1414
    :try_start_259
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v16, "_fot"

    .line 1415
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v17, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1421
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzl:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 1422
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzhf;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    if-eqz v0, :cond_371

    .line 1424
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_288

    goto/16 :goto_371

    .line 1430
    :cond_288
    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1431
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1432
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Z

    move-result v14

    if-nez v14, :cond_2a8

    .line 1433
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v6, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_380

    .line 1435
    :cond_2a8
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzhi;

    invoke-direct {v14, v9, v0}, Lcom/google/android/gms/measurement/internal/zzhi;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;Ljava/lang/String;)V

    .line 1436
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1437
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    new-instance v15, Landroid/content/ComponentName;

    const-string v11, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v15, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1440
    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_2e4

    .line 1442
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1443
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v6, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 1445
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_380

    :cond_2e4
    const/4 v15, 0x0

    .line 1447
    invoke-virtual {v11, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_361

    .line 1448
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_361

    .line 1449
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1450
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_380

    .line 1451
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1452
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v11, :cond_351

    .line 1454
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_351

    .line 1455
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhf;->zza()Z

    move-result v6

    if-eqz v6, :cond_351

    .line 1456
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_316
    .catchall {:try_start_259 .. :try_end_316} :catchall_535

    .line 1457
    :try_start_316
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1458
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v11

    const/4 v15, 0x1

    .line 1459
    invoke-virtual {v0, v11, v6, v14, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1460
    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1461
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 1462
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v11, "Install Referrer Service is"

    if-eqz v0, :cond_336

    const-string v0, "available"

    goto :goto_338

    :cond_336
    const-string v0, "not available"

    .line 1463
    :goto_338
    invoke-virtual {v6, v11, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_33b
    .catch Ljava/lang/RuntimeException; {:try_start_316 .. :try_end_33b} :catch_33c
    .catchall {:try_start_316 .. :try_end_33b} :catchall_535

    goto :goto_380

    :catch_33c
    move-exception v0

    .line 1466
    :try_start_33d
    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1467
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 1468
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 1469
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1470
    invoke-virtual {v6, v9, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_380

    .line 1472
    :cond_351
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1473
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v6, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 1475
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto :goto_380

    .line 1477
    :cond_361
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1478
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v6, "Play Service for fetching Install Referrer is unavailable on device"

    .line 1480
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto :goto_380

    .line 1425
    :cond_371
    :goto_371
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhf;->zza:Lcom/google/android/gms/measurement/internal/zzhy;

    .line 1426
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 1427
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v6, "Install Referrer Reporter was called with invalid app package name"

    .line 1428
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 1483
    :cond_380
    :goto_380
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1484
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1485
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v14, 0x1

    .line 1486
    invoke-virtual {v6, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1487
    invoke-virtual {v6, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    .line 1488
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1489
    invoke-virtual {v6, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1490
    invoke-virtual {v6, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1491
    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x1

    .line 1492
    invoke-virtual {v6, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1493
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    if-eqz v0, :cond_3b1

    .line 1494
    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1495
    :cond_3b1
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 1497
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1498
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1499
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    const-string v9, "first_open_count"

    .line 1500
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 1503
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1504
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_3ee

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 1507
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    .line 1508
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1509
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3ea
    .catchall {:try_start_33d .. :try_end_3ea} :catchall_535

    :cond_3ea
    :goto_3ea
    const-wide/16 v3, 0x0

    goto/16 :goto_49a

    .line 1512
    :cond_3ee
    :try_start_3ee
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1513
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v8, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3fd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3ee .. :try_end_3fd} :catch_3fe
    .catchall {:try_start_3ee .. :try_end_3fd} :catchall_535

    goto :goto_411

    :catch_3fe
    move-exception v0

    .line 1516
    :try_start_3ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v11

    .line 1517
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v11

    const-string v12, "Package info is null, first open report might be inaccurate. appId"

    .line 1518
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1519
    invoke-virtual {v11, v12, v13, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_411
    if-eqz v0, :cond_45d

    .line 1521
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_45d

    .line 1523
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v13

    if-eqz v0, :cond_442

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzbs:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-eqz v0, :cond_43b

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-nez v0, :cond_440

    const-wide/16 v11, 0x1

    .line 1526
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_440

    :cond_43b
    const-wide/16 v11, 0x1

    .line 1527
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_440
    :goto_440
    const/4 v15, 0x0

    goto :goto_443

    :cond_442
    const/4 v15, 0x1

    .line 1529
    :goto_443
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v16, "_fi"

    if-eqz v15, :cond_44c

    const-wide/16 v11, 0x1

    goto :goto_44e

    :cond_44c
    const-wide/16 v11, 0x0

    .line 1530
    :goto_44e
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v17, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1531
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V
    :try_end_45d
    .catchall {:try_start_3ff .. :try_end_45d} :catchall_535

    .line 1534
    :cond_45d
    :try_start_45d
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zza()Landroid/content/Context;

    move-result-object v0

    .line 1535
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v8, v7}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_46c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45d .. :try_end_46c} :catch_46d
    .catchall {:try_start_45d .. :try_end_46c} :catchall_535

    goto :goto_480

    :catch_46d
    move-exception v0

    .line 1538
    :try_start_46e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v7

    .line 1539
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v7

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    .line 1540
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1541
    invoke-virtual {v7, v11, v8, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_480
    if-eqz v0, :cond_3ea

    .line 1543
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_48d

    const-wide/16 v7, 0x1

    .line 1544
    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1545
    :cond_48d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3ea

    const-wide/16 v7, 0x1

    .line 1546
    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_3ea

    :goto_49a
    cmp-long v0, v9, v3

    if-ltz v0, :cond_4a1

    .line 1548
    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1549
    :cond_4a1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v16, "_f"

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v3, v6}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v0

    move-object/from16 v17, v3

    move-wide/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 1550
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto/16 :goto_526

    :cond_4b9
    move v3, v11

    if-ne v9, v3, :cond_526

    .line 1552
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzon;

    const-string v16, "_fvt"

    .line 1553
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object v15, v0

    move-wide/from16 v17, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzon;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 1554
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zzon;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v3, 0x1

    .line 1560
    invoke-virtual {v0, v13, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1561
    invoke-virtual {v0, v12, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1562
    invoke-virtual {v0, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1563
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    if-eqz v5, :cond_4f0

    .line 1564
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1565
    :cond_4f0
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v16, "_v"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 1566
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    goto :goto_526

    .line 1567
    :cond_507
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzo;->zzi:Z

    if-eqz v0, :cond_526

    .line 1569
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1570
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzbf;

    const-string v16, "_cd"

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    const-string v18, "auto"

    move-object v15, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    .line 1571
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)V

    .line 1572
    :cond_526
    :goto_526
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzw()V
    :try_end_52d
    .catchall {:try_start_46e .. :try_end_52d} :catchall_535

    .line 1573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    return-void

    :catchall_535
    move-exception v0

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->zzu()V

    .line 1576
    throw v0
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzf()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method final zze(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 9

    const-string v0, "app_id=?"

    .line 1678
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    if-eqz v1, :cond_12

    .line 1679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzaa:Ljava/util/List;

    .line 1680
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1681
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1682
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1683
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1684
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1685
    :try_start_27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 1687
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 1688
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "events_snapshot"

    .line 1689
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 1690
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 1691
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 1692
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 1693
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 1694
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 1695
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 1696
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "default_event_params"

    .line 1697
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "trigger_uris"

    .line 1698
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "upload_queue"

    .line 1699
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_b2

    .line 1701
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_9f} :catch_a0

    goto :goto_b2

    :catch_a0
    move-exception v0

    .line 1704
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 1705
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    .line 1706
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1707
    :cond_b2
    :goto_b2
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    if-eqz v0, :cond_b9

    .line 1708
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zzd(Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_b9
    return-void
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzal;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzal;

    return-object v0
.end method

.method final zzf(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1712
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1713
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1714
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzo;->zzz:Ljava/lang/String;

    .line 1715
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v2

    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 1717
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Setting DMA consent for package"

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1718
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1719
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1721
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1722
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1723
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x64

    .line 1725
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v3

    .line 1726
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzad:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzax;)V

    .line 1728
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1730
    invoke-static {v2, v4}, Lcom/google/android/gms/measurement/internal/zzax;->zza(Landroid/os/Bundle;I)Lcom/google/android/gms/measurement/internal/zzax;

    move-result-object v2

    .line 1731
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzax;->zzc()Lcom/google/android/gms/measurement/internal/zzjh;

    move-result-object v2

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1735
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1736
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_70

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v2, v4, :cond_70

    move v4, v5

    goto :goto_71

    :cond_70
    move v4, v6

    .line 1737
    :goto_71
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v3, v7, :cond_7b

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    if-ne v2, v3, :cond_7b

    move v2, v5

    goto :goto_7c

    :cond_7b
    move v2, v6

    .line 1738
    :goto_7c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzcq:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_8f

    if-nez v4, :cond_8e

    if-eqz v2, :cond_8d

    goto :goto_8e

    :cond_8d
    move v5, v6

    :cond_8e
    :goto_8e
    move v4, v5

    :cond_8f
    if-eqz v4, :cond_ff

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Generated _dcu event for"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1743
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1745
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    .line 1746
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    .line 1747
    invoke-virtual/range {v6 .. v16}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1748
    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    .line 1749
    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzay:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_f8

    const-string v3, "_r"

    const-wide/16 v4, 0x1

    .line 1751
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1753
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzx()J

    move-result-wide v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v9, v1

    .line 1755
    invoke-virtual/range {v6 .. v16}, Lcom/google/android/gms/measurement/internal/zzal;->zza(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v3

    .line 1756
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 1757
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzaq;->zzf:J

    .line 1758
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "_dcu realtime event count"

    invoke-virtual {v4, v5, v1, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1759
    :cond_f8
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zznv;->zzah:Lcom/google/android/gms/measurement/internal/zzor;

    const-string v4, "_dcu"

    invoke-interface {v3, v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzor;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_ff
    return-void
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzgh;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzk()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/measurement/internal/zzo;)V
    .registers 7

    .line 1768
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1769
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 1770
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1771
    iget v0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzy:I

    .line 1772
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    .line 1773
    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/zzje;->zza(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v0

    .line 1774
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v1

    .line 1775
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 1776
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Setting storage consent for package"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 1777
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1778
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje;)V

    .line 1779
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1780
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcy:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1781
    :cond_43
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzje;->zzc(Lcom/google/android/gms/measurement/internal/zzje;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1782
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zznv;->zze(Lcom/google/android/gms/measurement/internal/zzo;)V

    :cond_4c
    return-void
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzgr;
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgr;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzhl;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhl;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    return-object v0
.end method

.method final zzk()Lcom/google/android/gms/measurement/internal/zzhy;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzli;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzi:Lcom/google/android/gms/measurement/internal/zzli;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzli;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzmw;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/measurement/internal/zznu;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznu;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzoo;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Lcom/google/android/gms/measurement/internal/zznr;)Lcom/google/android/gms/measurement/internal/zznr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzoo;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhy;->zzt()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    return-object v0
.end method

.method final zzr()V
    .registers 5

    .line 451
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 452
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 453
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzo:Z

    if-nez v0, :cond_7b

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzo:Z

    .line 455
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzae()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 457
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzy:Ljava/nio/channels/FileChannel;

    .line 458
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzh()Lcom/google/android/gms/measurement/internal/zzgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgg;->zzab()I

    move-result v1

    .line 462
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    if-le v0, v1, :cond_46

    .line 464
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 468
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7b

    :cond_46
    if-ge v0, v1, :cond_7b

    .line 472
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzy:Ljava/nio/channels/FileChannel;

    .line 473
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznv;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 474
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 475
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 476
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7b

    .line 477
    :cond_66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    .line 478
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 481
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method final zzs()V
    .registers 3

    .line 486
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzn:Z

    if-eqz v0, :cond_5

    return-void

    .line 487
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzt()V
    .registers 2

    .line 974
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzt:I

    return-void
.end method

.method final zzu()V
    .registers 2

    .line 1577
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzs:I

    return-void
.end method

.method protected final zzv()V
    .registers 9

    .line 1790
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1791
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzv()V

    .line 1792
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 1793
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 1794
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 1795
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zzaa()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_70

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzbh:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v4, 0x0

    .line 1796
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1797
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-nez v1, :cond_32

    goto :goto_70

    .line 1799
    :cond_32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 1801
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzbh:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 1802
    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1803
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "trigger_uris"

    const-string v6, "abs(timestamp_millis - ?) > cast(? as integer)"

    .line 1805
    invoke-virtual {v1, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_70

    .line 1807
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v4, "Deleted stale trigger uris. rowsDeleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1809
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1810
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8b

    .line 1812
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 1813
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V

    .line 1814
    :cond_8b
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V

    return-void
.end method

.method final zzw()V
    .registers 25

    move-object/from16 v8, p0

    .line 2141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    const/4 v0, 0x1

    .line 2143
    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    const/4 v9, 0x0

    .line 2144
    :try_start_10
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzm:Lcom/google/android/gms/measurement/internal/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhy;->zzr()Lcom/google/android/gms/measurement/internal/zzls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zzab()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2f

    .line 2146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 2147
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    .line 2148
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_644

    .line 2149
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2150
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2152
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_644

    .line 2154
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2155
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2157
    :cond_48
    :try_start_48
    iget-wide v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_59

    .line 2158
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_644

    .line 2159
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2160
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2164
    :cond_59
    :try_start_59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2165
    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzz:Ljava/util/List;

    if-eqz v1, :cond_66

    move v1, v0

    goto :goto_67

    :cond_66
    move v1, v9

    :goto_67
    if-eqz v1, :cond_7c

    .line 2167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_59 .. :try_end_76} :catchall_644

    .line 2168
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2169
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2171
    :cond_7c
    :try_start_7c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 2172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 2173
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzac()V
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_644

    .line 2174
    iput-boolean v9, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2175
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    .line 2177
    :cond_9c
    :try_start_9c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 2178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzau:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v5

    .line 2179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzg()J

    move-result-wide v10

    sub-long v10, v1, v10

    move v6, v9

    :goto_b9
    if-ge v6, v5, :cond_c4

    .line 2181
    invoke-direct {v8, v7, v10, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_c4

    add-int/lit8 v6, v6, 0x1

    goto :goto_b9

    .line 2183
    :cond_c4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 2184
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzab()V

    .line 2186
    :cond_cd
    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2187
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzmw;->zzd:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhb;->zza()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_f0

    .line 2189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 2190
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v5, v1, v5

    .line 2191
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2192
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2193
    :cond_f0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->f_()Ljava/lang/String;

    move-result-object v6

    .line 2194
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_615

    .line 2195
    iget-wide v10, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    cmp-long v3, v10, v4

    if-nez v3, :cond_110

    .line 2196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzal;->b_()J

    move-result-wide v3

    iput-wide v3, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 2197
    :cond_110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    .line 2198
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v3

    .line 2200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    .line 2201
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzh:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v5

    invoke-virtual {v5, v6, v3, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 2205
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_63a

    .line 2206
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v4

    if-eqz v4, :cond_193

    .line 2208
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_144
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_163

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 2209
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 2210
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzan()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_144

    .line 2211
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzan()Ljava/lang/String;

    move-result-object v4

    goto :goto_164

    :cond_163
    move-object v4, v7

    :goto_164
    if-eqz v4, :cond_193

    move v5, v9

    .line 2215
    :goto_167
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_193

    .line 2216
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 2217
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzan()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_190

    .line 2218
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzan()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_190

    .line 2219
    invoke-interface {v3, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    goto :goto_193

    :cond_190
    add-int/lit8 v5, v5, 0x1

    goto :goto_167

    .line 2222
    :cond_193
    :goto_193
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    move-result-object v4

    .line 2223
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 2224
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zzj(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1ba

    .line 2227
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v11

    if-eqz v11, :cond_1ba

    move v11, v0

    goto :goto_1bb

    :cond_1ba
    move v11, v9

    .line 2228
    :goto_1bb
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzje;->zzg()Z

    move-result v12

    .line 2230
    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzje;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzje;->zzh()Z

    move-result v13

    .line 2231
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v14

    if-eqz v14, :cond_1df

    .line 2232
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbh;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v14, v6, v15}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v14

    if-eqz v14, :cond_1df

    move v14, v0

    goto :goto_1e0

    :cond_1df
    move v14, v9

    .line 2234
    :goto_1e0
    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznu;

    .line 2235
    invoke-virtual {v15, v6}, Lcom/google/android/gms/measurement/internal/zznu;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v15

    move v7, v9

    :goto_1e7
    if-ge v7, v5, :cond_358

    .line 2237
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 2238
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    .line 2239
    move-object/from16 v16, v0

    check-cast v16, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2240
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16
    :try_end_203
    .catchall {:try_start_9c .. :try_end_203} :catchall_644

    :try_start_203
    move-object/from16 v9, v16

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-object/from16 v16, v10

    const-wide/32 v9, 0x19e10

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v9

    .line 2243
    invoke-virtual {v9, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v9
    :try_end_21e
    .catchall {:try_start_203 .. :try_end_21e} :catchall_641

    const/4 v10, 0x0

    .line 2245
    :try_start_21f
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_354

    if-nez v11, :cond_227

    .line 2247
    :try_start_224
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_227
    if-nez v12, :cond_22f

    .line 2249
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzq()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2250
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_22f
    if-nez v13, :cond_234

    .line 2252
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2253
    :cond_234
    invoke-virtual {v8, v6, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)V

    if-nez v14, :cond_23c

    .line 2255
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzr()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2256
    :cond_23c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznm;->zza()Z

    move-result v9

    if-eqz v9, :cond_253

    .line 2257
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzcz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_253

    if-nez v13, :cond_253

    .line 2259
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2261
    :cond_253
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzz()Ljava/lang/String;

    move-result-object v9

    .line 2263
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_272

    const-string v10, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_266

    goto :goto_272

    :cond_266
    move-object/from16 v17, v3

    move/from16 v18, v11

    move/from16 v22, v12

    move/from16 v21, v13

    move/from16 v23, v14

    goto/16 :goto_316

    .line 2264
    :cond_272
    :goto_272
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzaa()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2266
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object/from16 v17, v3

    move/from16 v18, v11

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2269
    :goto_289
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2fe

    .line 2270
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v12

    move-object/from16 v12, v21

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move/from16 v21, v13

    const-string v13, "_fx"

    move/from16 v23, v14

    .line 2271
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b7

    .line 2273
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    move/from16 v13, v21

    move/from16 v12, v22

    move/from16 v14, v23

    const/16 v19, 0x1

    const/16 v20, 0x1

    goto :goto_289

    :cond_2b7
    const-string v13, "_f"

    .line 2275
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f7

    .line 2277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbh;->zzcw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v13

    if-eqz v13, :cond_2f5

    .line 2279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v13, "_pfo"

    .line 2280
    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v13

    if-eqz v13, :cond_2e2

    .line 2282
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2284
    :cond_2e2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v13, "_uwa"

    .line 2285
    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v12

    if-eqz v12, :cond_2f5

    .line 2287
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_2f5
    const/16 v20, 0x1

    :cond_2f7
    move/from16 v13, v21

    move/from16 v12, v22

    move/from16 v14, v23

    goto :goto_289

    :cond_2fe
    move/from16 v22, v12

    move/from16 v21, v13

    move/from16 v23, v14

    if-eqz v19, :cond_30c

    .line 2290
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzl()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2291
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    :cond_30c
    if-eqz v20, :cond_316

    .line 2294
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 2295
    invoke-direct {v8, v9, v10, v3, v11}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 2296
    :cond_316
    :goto_316
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzc()I

    move-result v3

    if-eqz v3, :cond_342

    .line 2297
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzbm:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_33f

    .line 2298
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzib;->zzca()[B

    move-result-object v3

    .line 2299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([B)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2300
    :cond_33f
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    :cond_342
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, v16

    move-object/from16 v3, v17

    move/from16 v11, v18

    move/from16 v13, v21

    move/from16 v12, v22

    move/from16 v14, v23

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1e7

    :catchall_354
    move-exception v0

    move v1, v10

    goto/16 :goto_646

    :cond_358
    move-object/from16 v16, v10

    .line 2302
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza()I

    move-result v0

    if-nez v0, :cond_37a

    move-object/from16 v0, v16

    .line 2303
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/List;)V

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v1, p0

    .line 2306
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zznv;->zza(ZILjava/lang/Throwable;[BLjava/lang/String;Ljava/util/List;)V
    :try_end_373
    .catchall {:try_start_224 .. :try_end_373} :catchall_641

    const/4 v1, 0x0

    .line 2307
    iput-boolean v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2308
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :cond_37a
    move-object/from16 v0, v16

    .line 2310
    :try_start_37c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 2311
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_54c

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_54c

    .line 2314
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zznw;->zza()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    if-ne v9, v10, :cond_54c

    .line 2315
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 2316
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3ca

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 2317
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbh()Z

    move-result v9

    if-eqz v9, :cond_3b6

    const/4 v3, 0x1

    goto :goto_3cb

    :cond_3ca
    const/4 v3, 0x0

    :goto_3cb
    if-eqz v3, :cond_3d6

    .line 2321
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d7

    :cond_3d6
    const/4 v3, 0x0

    .line 2322
    :goto_3d7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 2324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2325
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2326
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    move-result-object v10

    .line 2327
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3f6

    .line 2328
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    .line 2329
    :cond_3f6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzi()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/google/android/gms/measurement/internal/zzhl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2330
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_407

    .line 2331
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    .line 2332
    :cond_407
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzf()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_414
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_433

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 2334
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v12

    .line 2335
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    .line 2336
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_414

    .line 2338
    :cond_433
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    .line 2339
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    .line 2340
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzcc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v9

    if-eqz v9, :cond_460

    .line 2341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    .line 2342
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    const-string v11, "Processed MeasurementBatch for sGTM with sgtmJoinId: "

    .line 2343
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_458

    const-string v12, "null"

    goto :goto_45c

    :cond_458
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zzc()Ljava/lang/String;

    move-result-object v12

    .line 2344
    :goto_45c
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_46d

    .line 2345
    :cond_460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v9

    const-string v11, "Processed MeasurementBatch for sGTM."

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 2346
    :goto_46d
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 2348
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_549

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzcc:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v10

    if-eqz v10, :cond_549

    .line 2349
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 2351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2352
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzs()V

    .line 2353
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    move-result-object v11

    .line 2354
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v12

    const-string v13, "Processing Google Signal, sgtmJoinId:"

    invoke-virtual {v12, v13, v3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2355
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    .line 2356
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzf()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4d9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    .line 2358
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzw()Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v12

    .line 2359
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzah()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v12

    .line 2360
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzd()I

    move-result v10

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;

    move-result-object v10

    .line 2361
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;

    goto :goto_4b5

    .line 2363
    :cond_4d9
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    .line 2366
    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzk:Lcom/google/android/gms/measurement/internal/zznu;

    .line 2368
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzhl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2369
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_531

    .line 2370
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzr:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v12, 0x0

    .line 2371
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2372
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2373
    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 2374
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2375
    new-instance v10, Lcom/google/android/gms/measurement/internal/zznw;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zznw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznt;)V

    const/4 v12, 0x0

    goto :goto_541

    .line 2376
    :cond_531
    new-instance v10, Lcom/google/android/gms/measurement/internal/zznw;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzbh;->zzr:Lcom/google/android/gms/measurement/internal/zzfz;

    const/4 v12, 0x0

    .line 2377
    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2378
    check-cast v11, Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    invoke-direct {v10, v11, v13}, Lcom/google/android/gms/measurement/internal/zznw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznt;)V

    .line 2379
    :goto_541
    invoke-static {v3, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 2380
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54a

    :cond_549
    const/4 v12, 0x0

    :goto_54a
    move-object v3, v9

    goto :goto_54d

    :cond_54c
    const/4 v12, 0x0

    .line 2382
    :goto_54d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_561

    .line 2383
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Ljava/lang/String;

    move-result-object v9

    goto :goto_562

    :cond_561
    move-object v9, v12

    .line 2384
    :goto_562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzp()Lcom/google/android/gms/measurement/internal/zzoo;

    .line 2385
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzib;->zzca()[B

    move-result-object v13

    .line 2387
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zza()Z

    move-result v10
    :try_end_56d
    .catchall {:try_start_37c .. :try_end_56d} :catchall_641

    const-string v11, "Uploading data. app, uncompressed size, data"

    const-string v12, "?"

    if-eqz v10, :cond_5b5

    .line 2388
    :try_start_573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v10

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbh;->zzcf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v10

    if-eqz v10, :cond_5b5

    .line 2389
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/List;)V

    .line 2391
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2392
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V
    :try_end_589
    .catchall {:try_start_573 .. :try_end_589} :catchall_641

    if-lez v5, :cond_594

    const/4 v1, 0x0

    .line 2395
    :try_start_58c
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    move-result-object v0
    :try_end_590
    .catchall {:try_start_58c .. :try_end_590} :catchall_5cb

    :try_start_590
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    .line 2396
    :cond_594
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 2397
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    array-length v1, v13

    .line 2398
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v12, v1, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2399
    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 2400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznz;

    invoke-direct {v1, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zznz;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Ljava/util/List;)V

    .line 2401
    invoke-virtual {v0, v6, v15, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zznw;Lcom/google/android/gms/internal/measurement/zzfy$zzj;Lcom/google/android/gms/measurement/internal/zzgu;)V
    :try_end_5b3
    .catchall {:try_start_590 .. :try_end_5b3} :catchall_641

    goto/16 :goto_63a

    .line 2403
    :cond_5b5
    :try_start_5b5
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza(Ljava/util/List;)V

    .line 2405
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzj:Lcom/google/android/gms/measurement/internal/zzmw;

    .line 2406
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzmw;->zze:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(J)V
    :try_end_5bf
    .catch Ljava/net/MalformedURLException; {:try_start_5b5 .. :try_end_5bf} :catch_5fe
    .catchall {:try_start_5b5 .. :try_end_5bf} :catchall_641

    if-lez v5, :cond_5ce

    const/4 v1, 0x0

    .line 2409
    :try_start_5c2
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    move-result-object v0
    :try_end_5c6
    .catch Ljava/net/MalformedURLException; {:try_start_5c2 .. :try_end_5c6} :catch_5fe
    .catchall {:try_start_5c2 .. :try_end_5c6} :catchall_5cb

    :try_start_5c6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v12

    goto :goto_5ce

    :catchall_5cb
    move-exception v0

    goto/16 :goto_646

    .line 2410
    :cond_5ce
    :goto_5ce
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 2411
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    array-length v1, v13

    .line 2412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2413
    invoke-virtual {v0, v11, v12, v1, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 2414
    iput-boolean v0, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzv:Z

    .line 2415
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzh()Lcom/google/android/gms/measurement/internal/zzgr;

    move-result-object v10

    new-instance v12, Ljava/net/URL;

    .line 2416
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zznw;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2417
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zznw;->zzc()Ljava/util/Map;

    move-result-object v14

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-direct {v0, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoc;-><init>(Lcom/google/android/gms/measurement/internal/zznv;Ljava/lang/String;Ljava/util/List;)V
    :try_end_5f7
    .catch Ljava/net/MalformedURLException; {:try_start_5c6 .. :try_end_5f7} :catch_5fe
    .catchall {:try_start_5c6 .. :try_end_5f7} :catchall_641

    move-object v11, v6

    move-object v1, v15

    move-object v15, v0

    .line 2418
    :try_start_5fa
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzgu;)V
    :try_end_5fd
    .catch Ljava/net/MalformedURLException; {:try_start_5fa .. :try_end_5fd} :catch_5ff
    .catchall {:try_start_5fa .. :try_end_5fd} :catchall_641

    goto :goto_63a

    :catch_5fe
    move-object v1, v15

    .line 2421
    :catch_5ff
    :try_start_5ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 2422
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    .line 2423
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2424
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznw;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 2425
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_63a

    .line 2427
    :cond_615
    iput-wide v4, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzab:J

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    .line 2430
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzag;->zzg()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzal;->zza(J)Ljava/lang/String;

    move-result-object v0

    .line 2431
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63a

    .line 2432
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzf()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzal;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_63a

    .line 2434
    invoke-direct {v8, v0}, Lcom/google/android/gms/measurement/internal/zznv;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_63a
    .catchall {:try_start_5ff .. :try_end_63a} :catchall_641

    :cond_63a
    :goto_63a
    const/4 v1, 0x0

    .line 2435
    iput-boolean v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2436
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    return-void

    :catchall_641
    move-exception v0

    const/4 v1, 0x0

    goto :goto_646

    :catchall_644
    move-exception v0

    move v1, v9

    .line 2438
    :goto_646
    iput-boolean v1, v8, Lcom/google/android/gms/measurement/internal/zznv;->zzw:Z

    .line 2439
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zznv;->zzaa()V

    .line 2440
    throw v0
.end method
