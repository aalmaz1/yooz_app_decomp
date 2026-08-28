.class final Lcom/google/android/gms/measurement/internal/zzy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Lcom/google/android/gms/measurement/internal/zzac;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzt;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzf;)Lcom/google/android/gms/internal/measurement/zzfy$zzf;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v9

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object v10

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v2, "_eid"

    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    move v6, v3

    goto :goto_23

    :cond_22
    move v6, v5

    :goto_23
    if-eqz v6, :cond_2f

    const-string v7, "_ep"

    .line 7
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    move v7, v3

    goto :goto_30

    :cond_2f
    move v7, v5

    :goto_30
    const-wide/16 v11, 0x0

    if-eqz v7, :cond_149

    .line 9
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v6, "_en"

    invoke-static {v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    .line 11
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5c

    .line 12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    .line 14
    :cond_5c
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    if-eqz v6, :cond_72

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    if-eqz v6, :cond_72

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-eqz v6, :cond_a3

    .line 15
    :cond_72
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_139

    .line 17
    iget-object v13, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v13, :cond_84

    goto/16 :goto_139

    .line 22
    :cond_84
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    .line 23
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    .line 24
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-static {v6, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    .line 26
    :cond_a3
    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    const-wide/16 v13, 0x1

    sub-long/2addr v6, v13

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    cmp-long v2, v6, v11

    if-gtz v2, :cond_e1

    .line 28
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v6, "Clearing complex main event info. appId"

    invoke-virtual {v4, v6, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :try_start_c4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzal;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "delete from main_event_params where app_id=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    .line 32
    invoke-virtual {v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4 .. :try_end_d1} :catch_d2

    goto :goto_f0

    :catch_d2
    move-exception v0

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_f0

    .line 37
    :cond_e1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfy$zzf;)Z

    .line 38
    :goto_f0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ff
    :goto_ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 40
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object v4

    if-nez v4, :cond_ff

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    .line 44
    :cond_11e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_129

    .line 45
    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v10, v0

    goto :goto_190

    .line 47
    :cond_129
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    .line 49
    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_190

    .line 18
    :cond_139
    :goto_139
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 20
    invoke-virtual {v0, v2, v9, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :cond_149
    if-eqz v6, :cond_190

    .line 51
    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/Long;

    .line 52
    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    .line 53
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    const-string v2, "_epc"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    cmp-long v2, v2, v11

    if-gtz v2, :cond_17a

    .line 56
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v2, "Complex event with zero extra param count. eventName"

    .line 58
    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_190

    .line 59
    :cond_17a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzns;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v2

    .line 60
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:J

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfy$zzf;)Z

    .line 63
    :cond_190
    :goto_190
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzjt;->zzcd()Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    move-result-object v0

    .line 64
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjt$zzb;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    return-object v0
.end method
