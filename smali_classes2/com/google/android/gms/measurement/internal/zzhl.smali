.class public final Lcom/google/android/gms/measurement/internal/zzhl;
.super Lcom/google/android/gms/measurement/internal/zznr;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzai;


# instance fields
.field final zza:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzb;",
            ">;"
        }
    .end annotation
.end field

.field final zzb:Lcom/google/android/gms/internal/measurement/zzv;

.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzfr$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznr;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    .line 137
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzc:Ljava/util/Map;

    .line 138
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 139
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zze:Ljava/util/Map;

    .line 140
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzf:Ljava/util/Map;

    .line 141
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    .line 142
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzj:Ljava/util/Map;

    .line 143
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzk:Ljava/util/Map;

    .line 144
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzl:Ljava/util/Map;

    .line 145
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzi:Ljava/util/Map;

    .line 146
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzho;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzho;-><init>(Lcom/google/android/gms/measurement/internal/zzhl;I)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Landroidx/collection/LruCache;

    .line 147
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzhr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzhr;-><init>(Lcom/google/android/gms/measurement/internal/zzhl;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzb:Lcom/google/android/gms/internal/measurement/zzv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzhl;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzb;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzb;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzfr$zzd;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_0

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzg()Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zze()Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 89
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzr()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzc()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 90
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzp()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzi()Ljava/lang/String;

    move-result-object v4

    .line 91
    :cond_2
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzkb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 101
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzg()Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 96
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzg()Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;)Lcom/google/android/gms/measurement/internal/zzje$zza;
    .locals 1

    .line 63
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzje$zza;

    return-object p0

    .line 66
    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzje$zza;

    return-object p0

    .line 65
    :cond_2
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzje$zza;

    return-object p0

    .line 64
    :cond_3
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzje$zza;->zza:Lcom/google/android/gms/measurement/internal/zzje$zza;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzfr$zzd;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzfr$zzd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzn()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfr$zzh;

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zzh;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zzh;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzhl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzc:Ljava/util/Map;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;)V
    .locals 9

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 157
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 158
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz p2, :cond_8

    .line 160
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zze()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfr$zzb;

    .line 161
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzb;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 164
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zza()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 165
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzfr$zzc;

    move-result-object v5

    .line 166
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v5

    .line 167
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 171
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzb()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzb()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 174
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;

    move-result-object v5

    .line 175
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfr$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;

    .line 176
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zze()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzc()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzf()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzg()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 181
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zza()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    .line 182
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zza()I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_5

    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v6

    .line 184
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v6

    .line 185
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zzb()Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfr$zzc$zza;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    .line 187
    invoke-virtual {v6, v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 190
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zze:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzf:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzi:Ljava/util/Map;

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd;)V
    .locals 3

    .line 223
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Landroidx/collection/LruCache;

    invoke-virtual {p2, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EES programs found"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzm()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzgd$zzc;

    .line 228
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzb;-><init>()V

    const-string v1, "internal.remoteConfig"

    .line 229
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhn;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhn;-><init>(Lcom/google/android/gms/measurement/internal/zzhl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    const-string v1, "internal.appMetadata"

    .line 230
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhm;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzhm;-><init>(Lcom/google/android/gms/measurement/internal/zzhl;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    const-string v1, "internal.logger"

    .line 231
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzhp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzhp;-><init>(Lcom/google/android/gms/measurement/internal/zzhl;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzb;->zza(Lcom/google/android/gms/internal/measurement/zzgd$zzc;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Landroidx/collection/LruCache;

    invoke-virtual {v1, p1, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "EES program loaded for appId, activities"

    .line 236
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zza()Lcom/google/android/gms/internal/measurement/zzgd$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgd$zza;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgd$zzc;->zza()Lcom/google/android/gms/internal/measurement/zzgd$zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzgd$zza;->zzd()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgd$zzb;

    .line 239
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "EES program activity"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgd$zzb;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzc; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    .line 243
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p2

    const-string v0, "Failed to load EES program. appId"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzu(Ljava/lang/String;)V
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 197
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzal;->zzf(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzc:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zze:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzj:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzk:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzi:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 211
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzan;->zza:[B

    .line 212
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v1

    .line 214
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;

    .line 215
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;)V

    .line 216
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzc:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzfr$zzd;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd;)V

    .line 219
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzj:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzk:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzb:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzl:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzan;->zzc:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic g_()Lcom/google/android/gms/measurement/internal/zzoo;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)J
    .locals 3

    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Unable to parse timezone offset. appId"

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 16
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Lcom/google/android/gms/measurement/internal/zzjh;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object p1

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zzf()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfr$zza$zza;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;)Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 46
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzht;->zzc:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 49
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p1

    .line 48
    :cond_2
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjh;->zzd:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p1

    .line 47
    :cond_3
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjh;->zzc:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p1

    .line 51
    :cond_4
    sget-object p1, Lcom/google/android/gms/measurement/internal/zzjh;->zza:Lcom/google/android/gms/measurement/internal/zzjh;

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final zza(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 297
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 298
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    .line 301
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 304
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;)V

    .line 305
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfr$zzd;)V

    .line 306
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzj:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzk:Ljava/util/Map;

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzl:Ljava/util/Map;

    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzc:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzfr$zzd;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zzd()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/util/List;)V

    .line 312
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfr$zzd$zza;

    .line 313
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzib;->zzca()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 316
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v3

    .line 317
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v3

    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 318
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 319
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    .line 321
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 323
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 324
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "remote_config"

    .line 325
    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "config_last_modified_time"

    .line 326
    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "e_tag"

    .line 327
    invoke-virtual {v3, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 328
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "apps"

    const-string v4, "app_id = ?"

    new-array v5, p2, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 329
    invoke-virtual {p3, p4, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    int-to-long p3, p3

    const-wide/16 v3, 0x0

    cmp-long p3, p3, v3

    if-nez p3, :cond_1

    .line 331
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p3

    .line 332
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p3

    const-string p4, "Failed to update remote config (got 0). appId"

    .line 333
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p4, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p3

    .line 336
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p4

    .line 337
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p4

    const-string v1, "Error storing remote config. appId"

    .line 338
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p4, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzi:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zzd()Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Lcom/google/android/gms/measurement/internal/zzje$zza;
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zze()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;)Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzc;->zzb()Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;)Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zzd;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzal()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 81
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    return-object p1
.end method

.method protected final zzc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final zzc(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzje$zza;)Z
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 256
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zzd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfr$zza$zza;

    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Lcom/google/android/gms/internal/measurement/zzfr$zza$zze;)Lcom/google/android/gms/measurement/internal/zzje$zza;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 262
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;->zzb:Lcom/google/android/gms/internal/measurement/zzfr$zza$zzd;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 271
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 272
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 273
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    .line 275
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    .line 276
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 280
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 281
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 29
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method final zzd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzos;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zze:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 291
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 292
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method protected final zze(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 32
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    return-object v0
.end method

.method final zzf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 115
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzg()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method final zzg(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method final zzh(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zzc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzf;

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr$zza$zzf;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 33
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    return-object v0
.end method

.method protected final zzi(Ljava/lang/String;)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzk:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 34
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    return-object v0
.end method

.method final zzj(Ljava/lang/String;)V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 35
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Ljava/lang/String;)Z
    .locals 2

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfr$zzd;

    if-nez p1, :cond_1

    return v1

    .line 253
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zzd;->zza()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 37
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    return-object v0
.end method

.method final zzl(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzhl;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    return-object v0
.end method

.method final zzm(Ljava/lang/String;)Z
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr$zza;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr$zza;->zzg()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzmw;
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    move-result-object v0

    return-object v0
.end method

.method final zzn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 295
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzhl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zznu;
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    move-result-object v0

    return-object v0
.end method

.method final zzo(Ljava/lang/String;)Z
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 342
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 344
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "app_instance_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final zzp(Ljava/lang/String;)Z
    .locals 2

    .line 346
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 347
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 349
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "device_model"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 350
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 72
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    return-object v0
.end method

.method final zzq(Ljava/lang/String;)Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 353
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 355
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "enhanced_user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzr()V

    return-void
.end method

.method final zzr(Ljava/lang/String;)Z
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 358
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 360
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "google_signals"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzs()V

    return-void
.end method

.method final zzs(Ljava/lang/String;)Z
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 363
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 365
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "os_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    .line 366
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 151
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzt()V

    return-void
.end method

.method final zzt(Ljava/lang/String;)Z
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 369
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzu(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
