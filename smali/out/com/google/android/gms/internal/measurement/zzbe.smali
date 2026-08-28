.class public final Lcom/google/android/gms/internal/measurement/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"


# direct methods
.method private static zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzaf;
    .registers 4

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzaf;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzaf;
    .registers 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zzaq;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzd()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    return-object v0

    :cond_4c
    if-eqz p4, :cond_58

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzd()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 10
    :cond_58
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_9

    :cond_5c
    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzaq;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzaf;",
            "Lcom/google/android/gms/internal/measurement/zzh;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;Z)",
            "Lcom/google/android/gms/internal/measurement/zzaq;"
        }
    .end annotation

    const-string v0, "reduce"

    const/4 v1, 0x1

    .line 299
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x2

    .line 300
    invoke-static {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    const/4 v0, 0x0

    .line 301
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    .line 302
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzal;

    if-eqz v4, :cond_9f

    .line 304
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_36

    .line 305
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object p2

    .line 306
    instance-of v4, p2, Lcom/google/android/gms/internal/measurement/zzaj;

    if-nez v4, :cond_2e

    goto :goto_3d

    .line 307
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed to parse initial value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result p2

    if-eqz p2, :cond_97

    const/4 p2, 0x0

    .line 311
    :goto_3d
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzal;

    .line 312
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v4

    if-eqz p3, :cond_47

    move v5, v0

    goto :goto_49

    :cond_47
    add-int/lit8 v5, v4, -0x1

    :goto_49
    if-eqz p3, :cond_4d

    sub-int/2addr v4, v1

    goto :goto_4e

    :cond_4d
    move v4, v0

    :goto_4e
    if-eqz p3, :cond_52

    move p3, v1

    goto :goto_53

    :cond_52
    const/4 p3, -0x1

    :goto_53
    if-nez p2, :cond_5a

    .line 317
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object p2

    goto :goto_94

    :cond_5a
    :goto_5a
    sub-int v6, v4, v5

    mul-int/2addr v6, p3

    if-ltz v6, :cond_96

    .line 320
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc(I)Z

    move-result v6

    if-eqz v6, :cond_94

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/zzaq;

    aput-object p2, v6, v0

    .line 322
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object p2

    aput-object p2, v6, v1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {p2, v7}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    aput-object p2, v6, v2

    const/4 p2, 0x3

    aput-object p0, v6, p2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 323
    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object p2

    .line 324
    instance-of v6, p2, Lcom/google/android/gms/internal/measurement/zzaj;

    if-nez v6, :cond_8c

    goto :goto_94

    .line 325
    :cond_8c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Reduce operation failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_94
    :goto_94
    add-int/2addr v5, p3

    goto :goto_5a

    :cond_96
    return-object p2

    .line 310
    :cond_97
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Empty array with no initial value error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback should be a method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzaf;",
            "Lcom/google/android/gms/internal/measurement/zzh;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzaq;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "reverse"

    const-string v6, "slice"

    const-string v7, "shift"

    const-string v8, "every"

    const-string v9, "sort"

    const-string v10, "some"

    const-string v11, "join"

    const-string v12, "pop"

    const-string v13, "map"

    const-string v14, "lastIndexOf"

    const-string v15, "forEach"

    const-string v1, "filter"

    const-string v2, "toString"

    const/4 v3, 0x1

    move-object/from16 v16, v2

    .line 42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v17, -0x1

    sparse-switch v4, :sswitch_data_772

    :goto_35
    move-object/from16 v4, v16

    goto/16 :goto_123

    :sswitch_39
    const-string v4, "indexOf"

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_35

    :cond_42
    const/16 v0, 0x13

    goto/16 :goto_ea

    :sswitch_46
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_35

    :cond_4d
    const/16 v0, 0x12

    goto/16 :goto_ea

    :sswitch_51
    const-string v4, "reduceRight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_35

    :cond_5a
    const/16 v0, 0x11

    goto/16 :goto_ea

    :sswitch_5e
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_35

    :cond_65
    const/16 v0, 0x10

    goto/16 :goto_ea

    :sswitch_69
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_35

    :cond_70
    const/16 v0, 0xf

    goto/16 :goto_ea

    :sswitch_74
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto :goto_35

    :cond_7b
    const/16 v0, 0xe

    goto/16 :goto_ea

    :sswitch_7f
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_35

    :cond_86
    const/16 v0, 0xd

    goto/16 :goto_ea

    :sswitch_8a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto :goto_35

    :cond_91
    const/16 v0, 0xc

    goto :goto_ea

    :sswitch_94
    const-string v4, "push"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_35

    :cond_9d
    const/16 v0, 0xb

    goto :goto_ea

    :sswitch_a0
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_35

    :cond_a7
    const/16 v0, 0xa

    goto :goto_ea

    :sswitch_aa
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_35

    :cond_b1
    const/16 v0, 0x9

    goto :goto_ea

    :sswitch_b4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_35

    :cond_bc
    const/16 v0, 0x8

    goto :goto_ea

    :sswitch_bf
    const-string v4, "unshift"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    goto/16 :goto_35

    :cond_c9
    const/4 v0, 0x7

    goto :goto_ea

    :sswitch_cb
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto/16 :goto_35

    :cond_d3
    const/4 v0, 0x6

    goto :goto_ea

    :sswitch_d5
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    goto/16 :goto_35

    :cond_dd
    const/4 v0, 0x5

    goto :goto_ea

    :sswitch_df
    const-string v4, "splice"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    goto/16 :goto_35

    :cond_e9
    const/4 v0, 0x4

    :goto_ea
    move/from16 v17, v0

    goto/16 :goto_35

    :sswitch_ee
    const-string v4, "reduce"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto/16 :goto_35

    :cond_f8
    move-object/from16 v4, v16

    const/16 v17, 0x3

    goto :goto_123

    :sswitch_fd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    goto/16 :goto_35

    :cond_105
    move-object/from16 v4, v16

    const/16 v17, 0x2

    goto :goto_123

    :sswitch_10a
    const-string v4, "concat"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_114

    goto/16 :goto_35

    :cond_114
    move/from16 v17, v3

    goto/16 :goto_35

    :sswitch_118
    move-object/from16 v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    goto :goto_123

    :cond_121
    const/16 v17, 0x0

    :goto_123
    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    const-string v0, "Callback should be a method"

    move-object/from16 v20, v4

    const-wide/16 v3, 0x0

    packed-switch v17, :pswitch_data_7c4

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_136
    const-string v0, "indexOf"

    move-object/from16 v15, p3

    const/4 v1, 0x2

    .line 76
    invoke-static {v0, v1, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    .line 78
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_154

    const/4 v1, 0x0

    .line 79
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    goto :goto_156

    :cond_154
    move-object/from16 v5, p2

    .line 81
    :goto_156
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_192

    .line 82
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v1

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v5, v1, v5

    if-ltz v5, :cond_186

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_186
    cmpg-double v3, v1, v3

    if-gez v3, :cond_191

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v3, v1

    goto :goto_192

    :cond_191
    move-wide v3, v1

    .line 88
    :cond_192
    :goto_192
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :cond_196
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v5, v2

    cmpg-double v7, v5, v3

    move-object/from16 v14, p1

    if-ltz v7, :cond_196

    .line 91
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzaq;Lcom/google/android/gms/internal/measurement/zzaq;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 92
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 94
    :cond_1c1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_1cb
    move-object/from16 v14, p1

    move-object/from16 v15, p3

    const/4 v0, 0x0

    .line 159
    invoke-static {v5, v0, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-eqz v0, :cond_202

    const/4 v3, 0x0

    .line 162
    :goto_1da
    div-int/lit8 v1, v0, 0x2

    if-ge v3, v1, :cond_202

    .line 163
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc(I)Z

    move-result v1

    if-eqz v1, :cond_1ff

    .line 164
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v14, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v3

    .line 166
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc(I)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 167
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    .line 168
    :cond_1fc
    invoke-virtual {v14, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    :cond_1ff
    add-int/lit8 v3, v3, 0x1

    goto :goto_1da

    :cond_202
    return-object v14

    :pswitch_203
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v0, 0x0

    .line 157
    invoke-static {v14, v5, v15, v0}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    return-object v0

    :pswitch_20f
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 182
    invoke-static {v6, v1, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 183
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_225

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc()Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    return-object v0

    .line 185
    :cond_225
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v2

    int-to-double v6, v2

    .line 187
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v8

    cmpg-double v0, v8, v3

    if-gez v0, :cond_24a

    add-double/2addr v8, v6

    .line 189
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    goto :goto_24e

    .line 190
    :cond_24a
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 191
    :goto_24e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_279

    const/4 v0, 0x1

    .line 192
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v0

    cmpg-double v2, v0, v3

    if-gez v2, :cond_275

    add-double/2addr v6, v0

    .line 194
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_279

    .line 195
    :cond_275
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 196
    :cond_279
    :goto_279
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    double-to-int v1, v8

    :goto_27f
    int-to-double v2, v1

    cmpg-double v2, v2, v6

    if-gez v2, :cond_28e

    .line 198
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_27f

    :cond_28e
    return-object v0

    :pswitch_28f
    move-object/from16 v14, p1

    move-object/from16 v15, p3

    const/4 v1, 0x0

    .line 173
    invoke-static {v7, v1, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-nez v0, :cond_2a0

    .line 176
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 177
    :cond_2a0
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    .line 178
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(I)V

    return-object v0

    :pswitch_2a8
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 36
    invoke-static {v8, v3, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 37
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    .line 38
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzar;

    if-eqz v4, :cond_2e1

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-eqz v0, :cond_2de

    .line 41
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzar;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v14, v5, v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzaf;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    if-eq v0, v1, :cond_2de

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzi:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 45
    :cond_2de
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzh:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 39
    :cond_2e1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2e7
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 222
    invoke-static {v9, v0, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 223
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-lt v0, v1, :cond_340

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzi()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31c

    const/4 v1, 0x0

    .line 226
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 227
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzal;

    if-eqz v2, :cond_314

    .line 229
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzal;

    goto :goto_31d

    .line 228
    :cond_314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Comparator should be a method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31c
    const/4 v1, 0x0

    .line 232
    :goto_31d
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzbh;

    invoke-direct {v2, v1, v5}, Lcom/google/android/gms/internal/measurement/zzbh;-><init>(Lcom/google/android/gms/internal/measurement/zzal;Lcom/google/android/gms/internal/measurement/zzh;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzj()V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_32d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_340

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    add-int/lit8 v2, v3, 0x1

    .line 236
    invoke-virtual {v14, v3, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    move v3, v2

    goto :goto_32d

    :cond_340
    return-object v14

    :pswitch_341
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 203
    invoke-static {v10, v3, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v3, 0x0

    .line 204
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    .line 205
    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/zzal;

    if-eqz v4, :cond_3ae

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-eqz v0, :cond_3ab

    .line 208
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzal;

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v0

    :cond_368
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3ab

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 211
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc(I)Z

    move-result v6

    if-eqz v6, :cond_368

    new-array v6, v2, [Lcom/google/android/gms/internal/measurement/zzaq;

    .line 213
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    const/4 v4, 0x1

    aput-object v7, v6, v4

    aput-object v14, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v4

    .line 214
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzaq;->zzd()Ljava/lang/Boolean;

    move-result-object v4

    .line 215
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_368

    .line 217
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzh:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 219
    :cond_3ab
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzi:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 206
    :cond_3ae
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3b4
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    .line 150
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d8

    .line 151
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    .line 152
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_3c4

    .line 154
    :cond_3d8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_3e7
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v0, 0x1

    .line 97
    invoke-static {v11, v0, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-nez v0, :cond_3fa

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzj:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 101
    :cond_3fa
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41c

    const/4 v0, 0x0

    .line 102
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzao;

    if-nez v1, :cond_419

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzax;

    if-eqz v1, :cond_414

    goto :goto_419

    .line 105
    :cond_414
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    goto :goto_41e

    :cond_419
    :goto_419
    const-string v0, ""

    goto :goto_41e

    :cond_41c
    const-string v0, ","

    .line 106
    :goto_41e
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_428
    move-object/from16 v14, p1

    move-object/from16 v15, p3

    const/4 v1, 0x0

    .line 141
    invoke-static {v12, v1, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-nez v0, :cond_439

    .line 144
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    :cond_439
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 145
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 146
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(I)V

    return-object v1

    :pswitch_443
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 132
    invoke-static {v13, v2, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 133
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 134
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzar;

    if-eqz v2, :cond_46f

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-nez v0, :cond_468

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    return-object v0

    .line 138
    :cond_468
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzar;

    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzaf;

    move-result-object v0

    return-object v0

    .line 135
    :cond_46f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_475
    move-object/from16 v14, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    .line 278
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f2

    .line 279
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    .line 280
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    .line 281
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    .line 282
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzaj;

    if-nez v3, :cond_4a2

    .line 284
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_48a

    .line 283
    :cond_4a2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Argument evaluation failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_4aa
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4cf

    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 289
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_4b2

    .line 291
    :cond_4cf
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzj()V

    .line 292
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f2

    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 294
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-virtual {v14, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_4d6

    .line 296
    :cond_4f2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_501
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v15, p3

    const/4 v1, 0x2

    .line 109
    invoke-static {v14, v1, v15}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 110
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    .line 111
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51e

    const/4 v1, 0x0

    .line 112
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    .line 113
    :cond_51e
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-double v7, v1

    .line 114
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_561

    .line 115
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_54a

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-double v1, v1

    goto :goto_556

    .line 118
    :cond_54a
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v1

    :goto_556
    move-wide v7, v1

    cmpg-double v1, v7, v3

    if-gez v1, :cond_561

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    int-to-double v1, v1

    add-double/2addr v7, v1

    :cond_561
    cmpg-double v1, v7, v3

    if-gez v1, :cond_56f

    .line 122
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 123
    :cond_56f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    :goto_579
    if-ltz v1, :cond_599

    .line 125
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc(I)Z

    move-result v2

    if-eqz v2, :cond_596

    .line 126
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzaq;Lcom/google/android/gms/internal/measurement/zzaq;)Z

    move-result v2

    if-eqz v2, :cond_596

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :cond_596
    add-int/lit8 v1, v1, -0x1

    goto :goto_579

    .line 129
    :cond_599
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_5a3
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    const/4 v1, 0x1

    .line 66
    invoke-static {v15, v1, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 67
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 68
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzar;

    if-eqz v2, :cond_5cd

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza()I

    move-result v0

    if-nez v0, :cond_5c5

    .line 71
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 72
    :cond_5c5
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzar;

    invoke-static {v6, v5, v1}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;)Lcom/google/android/gms/internal/measurement/zzaf;

    .line 73
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 69
    :cond_5cd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_5d3
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    const/4 v1, 0x2

    .line 241
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e6

    .line 242
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    return-object v0

    :cond_5e6
    const/4 v0, 0x0

    .line 243
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v7

    double-to-int v2, v7

    if-gez v2, :cond_60a

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_614

    .line 246
    :cond_60a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    if-le v2, v0, :cond_614

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v2

    .line 248
    :cond_614
    :goto_614
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v0

    .line 249
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    .line 250
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_685

    .line 252
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lez v7, :cond_658

    move v8, v2

    :goto_643
    add-int v9, v2, v7

    .line 254
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v8, v9, :cond_658

    .line 255
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)V

    .line 256
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_643

    .line 264
    :cond_658
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_684

    move v0, v1

    .line 265
    :goto_65f
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_684

    .line 266
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v7

    .line 267
    instance-of v8, v7, Lcom/google/android/gms/internal/measurement/zzaj;

    if-nez v8, :cond_67c

    add-int v8, v2, v0

    sub-int/2addr v8, v1

    .line 269
    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(ILcom/google/android/gms/internal/measurement/zzaq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_65f

    .line 268
    :cond_67c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to parse elements to add"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_684
    return-object v4

    :cond_685
    :goto_685
    if-ge v2, v0, :cond_695

    .line 260
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)V

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v6, v2, v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_685

    :cond_695
    return-object v4

    :pswitch_696
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 156
    invoke-static {v6, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    return-object v0

    :pswitch_6a2
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    .line 48
    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x0

    .line 49
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 50
    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzar;

    if-eqz v3, :cond_6f6

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zza()I

    move-result v0

    if-nez v0, :cond_6c7

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    return-object v0

    .line 54
    :cond_6c7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc()Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaf;

    .line 55
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzar;

    const/4 v3, 0x0

    .line 56
    invoke-static {v6, v5, v1, v3, v2}, Lcom/google/android/gms/internal/measurement/zzbe;->zza(Lcom/google/android/gms/internal/measurement/zzaf;Lcom/google/android/gms/internal/measurement/zzh;Lcom/google/android/gms/internal/measurement/zzal;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzaf;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v1

    :goto_6dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f5

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_6dd

    :cond_6f5
    return-object v2

    .line 51
    :cond_6f6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6fc
    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v3, p3

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->zzc()Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaf;

    .line 17
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75d

    .line 18
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_712
    :goto_712
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    .line 19
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    .line 20
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/zzaj;

    if-nez v3, :cond_755

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb()I

    move-result v3

    .line 23
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzaf;

    if-eqz v4, :cond_751

    .line 24
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaf;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzg()Ljava/util/Iterator;

    move-result-object v4

    .line 26
    :goto_734
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_712

    .line 27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 28
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzaf;->zza(I)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_734

    .line 31
    :cond_751
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzaf;->zzb(ILcom/google/android/gms/internal/measurement/zzaq;)V

    goto :goto_712

    .line 21
    :cond_755
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed evaluation of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75d
    return-object v0

    :pswitch_75e
    move-object/from16 v6, p1

    move-object/from16 v3, p3

    move-object/from16 v0, v20

    const/4 v1, 0x0

    .line 274
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 275
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzaf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_772
    .sparse-switch
        -0x69e9ad94 -> :sswitch_118
        -0x50c088ec -> :sswitch_10a
        -0x4bf73488 -> :sswitch_fd
        -0x37b90a9a -> :sswitch_ee
        -0x3565b984 -> :sswitch_df
        -0x28732996 -> :sswitch_d5
        -0x1bdda92d -> :sswitch_cb
        -0x108c6a77 -> :sswitch_bf
        0x1a55c -> :sswitch_b4
        0x1b251 -> :sswitch_aa
        0x31dd2a -> :sswitch_a0
        0x34af1a -> :sswitch_94
        0x35f4f4 -> :sswitch_8a
        0x35f59e -> :sswitch_7f
        0x5c6731b -> :sswitch_74
        0x6856c82 -> :sswitch_69
        0x6873d92 -> :sswitch_5e
        0x398d4c56 -> :sswitch_51
        0x418e52e2 -> :sswitch_46
        0x73d44649 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_7c4
    .packed-switch 0x0
        :pswitch_75e
        :pswitch_6fc
        :pswitch_6a2
        :pswitch_696
        :pswitch_5d3
        :pswitch_5a3
        :pswitch_501
        :pswitch_475
        :pswitch_443
        :pswitch_428
        :pswitch_3e7
        :pswitch_3b4
        :pswitch_341
        :pswitch_2e7
        :pswitch_2a8
        :pswitch_28f
        :pswitch_20f
        :pswitch_203
        :pswitch_1cb
        :pswitch_136
    .end packed-switch
.end method
