.class public final Lcom/google/android/gms/internal/measurement/zzas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzaq;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzaq;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/measurement/zzaq;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 255
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    return-void

    .line 254
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StringValue cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzas;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 259
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzas;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 261
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzas;

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzau;-><init>(Lcom/google/android/gms/internal/measurement/zzas;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    const-string v4, "charAt"

    .line 3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "concat"

    const-string v7, "indexOf"

    const-string v8, "replace"

    const-string v9, "substring"

    const-string v10, "split"

    const-string v11, "slice"

    const-string v12, "match"

    const-string v13, "lastIndexOf"

    const-string v14, "toLocaleUpperCase"

    const-string v15, "search"

    const-string v2, "toLowerCase"

    const-string v0, "toLocaleLowerCase"

    const-string v3, "toString"

    move-object/from16 v16, v4

    const-string v4, "hasOwnProperty"

    move-object/from16 v17, v14

    const-string v14, "toUpperCase"

    move-object/from16 v18, v14

    if-nez v5, :cond_9f

    .line 4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 6
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 7
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 8
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 9
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 10
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 11
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 12
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 13
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    move-object/from16 v5, v18

    .line 17
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v14, v17

    if-nez v18, :cond_a3

    .line 18
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a3

    move-object/from16 v17, v4

    const-string v4, "trim"

    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    goto :goto_a5

    :cond_9d
    const/4 v4, 0x0

    goto :goto_a6

    :cond_9f
    move-object/from16 v14, v17

    move-object/from16 v5, v18

    :cond_a3
    move-object/from16 v17, v4

    :goto_a5
    const/4 v4, 0x1

    :goto_a6
    if-eqz v4, :cond_67f

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v19, v3

    const/16 v20, -0x1

    sparse-switch v4, :sswitch_data_694

    :goto_b6
    move-object/from16 v4, v16

    :goto_b8
    move-object/from16 v3, v17

    move-object/from16 v6, v19

    :goto_bc
    move-object/from16 v17, v0

    goto/16 :goto_18f

    :sswitch_c0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c7

    goto :goto_b6

    :cond_c7
    const/16 v1, 0x10

    goto/16 :goto_145

    :sswitch_cb
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d2

    goto :goto_b6

    :cond_d2
    const/16 v1, 0xf

    goto/16 :goto_145

    :sswitch_d6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    goto :goto_b6

    :cond_dd
    const/16 v1, 0xe

    goto/16 :goto_145

    :sswitch_e1
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto :goto_b6

    :cond_e8
    const/16 v1, 0xd

    goto/16 :goto_145

    :sswitch_ec
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f3

    goto :goto_b6

    :cond_f3
    const/16 v1, 0xc

    goto :goto_145

    :sswitch_f6
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fd

    goto :goto_b6

    :cond_fd
    const/16 v1, 0xb

    goto :goto_145

    :sswitch_100
    const-string v4, "trim"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    goto :goto_b6

    :cond_109
    const/16 v1, 0xa

    goto :goto_145

    :sswitch_10c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_113

    goto :goto_b6

    :cond_113
    const/16 v1, 0x9

    goto :goto_145

    :sswitch_116
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    goto :goto_b6

    :cond_11d
    const/16 v1, 0x8

    goto :goto_145

    :sswitch_120
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    goto :goto_b6

    :cond_127
    const/4 v1, 0x7

    goto :goto_145

    :sswitch_129
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    goto :goto_b6

    :cond_130
    const/4 v1, 0x6

    goto :goto_145

    :sswitch_132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13a

    goto/16 :goto_b6

    :cond_13a
    const/4 v1, 0x5

    goto :goto_145

    :sswitch_13c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    goto/16 :goto_b6

    :cond_144
    const/4 v1, 0x4

    :goto_145
    move/from16 v20, v1

    goto/16 :goto_b6

    :sswitch_149
    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_152

    goto :goto_162

    :cond_152
    move-object/from16 v3, v17

    move-object/from16 v6, v19

    const/16 v20, 0x3

    goto/16 :goto_bc

    :sswitch_15a
    move-object/from16 v4, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_164

    :goto_162
    goto/16 :goto_b8

    :cond_164
    move-object/from16 v3, v17

    move-object/from16 v6, v19

    const/16 v20, 0x2

    goto/16 :goto_bc

    :sswitch_16c
    move-object/from16 v4, v16

    move-object/from16 v6, v19

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v3, v17

    if-nez v1, :cond_17a

    goto/16 :goto_bc

    :cond_17a
    const/16 v20, 0x1

    goto/16 :goto_bc

    :sswitch_17e
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v19

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v17, v0

    if-nez v1, :cond_18d

    goto :goto_18f

    :cond_18d
    const/16 v20, 0x0

    :goto_18f
    const-wide/16 v0, 0x0

    packed-switch v20, :pswitch_data_6da

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19c
    move-object/from16 v2, p3

    const/4 v3, 0x2

    .line 62
    invoke-static {v7, v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v6, p0

    .line 64
    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 66
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1b5

    .line 67
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    goto :goto_1c6

    :cond_1b5
    const/4 v4, 0x0

    .line 68
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaq;

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 69
    :goto_1c6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1ce

    goto :goto_1e1

    :cond_1ce
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 70
    :goto_1e1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v0

    .line 71
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzai;

    double-to-int v0, v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v2

    :pswitch_1f5
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    .line 100
    invoke-static {v8, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    .line 103
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22d

    const/4 v3, 0x0

    .line 104
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_22d

    .line 106
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 108
    :cond_22d
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_236

    return-object v6

    .line 113
    :cond_236
    instance-of v4, v1, Lcom/google/android/gms/internal/measurement/zzal;

    if-eqz v4, :cond_25f

    .line 114
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzal;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzaq;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v4, v8

    new-instance v7, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v8, v3

    .line 115
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const/4 v7, 0x2

    aput-object v6, v4, v7

    .line 116
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-virtual {v1, v5, v4}, Lcom/google/android/gms/internal/measurement/zzal;->zza(Lcom/google/android/gms/internal/measurement/zzh;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    .line 118
    :cond_25f
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzas;

    const/4 v5, 0x0

    .line 119
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v4

    :pswitch_28c
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    .line 186
    invoke-static {v9, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 188
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 190
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b7

    const/4 v1, 0x0

    .line 191
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v3

    double-to-int v1, v3

    goto :goto_2b8

    :cond_2b7
    const/4 v1, 0x0

    .line 193
    :goto_2b8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2d7

    .line 194
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_2db

    .line 195
    :cond_2d7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_2db
    const/4 v3, 0x0

    .line 196
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 198
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v3

    :pswitch_306
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    .line 156
    invoke-static {v10, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 158
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_324

    .line 161
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/zzaq;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>([Lcom/google/android/gms/internal/measurement/zzaq;)V

    return-object v0

    :cond_324
    const/4 v3, 0x0

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_335

    .line 164
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3b2

    .line 165
    :cond_335
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_361

    .line 168
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(D)J

    move-result-wide v4

    goto :goto_364

    :cond_361
    const-wide/32 v4, 0x7fffffff

    :goto_364
    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-nez v2, :cond_370

    .line 170
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>()V

    return-object v0

    .line 171
    :cond_370
    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    long-to-int v7, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 172
    array-length v2, v0

    .line 173
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39a

    array-length v3, v0

    if-lez v3, :cond_39a

    const/4 v3, 0x0

    .line 174
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    .line 176
    array-length v3, v0

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39b

    .line 177
    array-length v2, v0

    sub-int/2addr v2, v7

    goto :goto_39b

    :cond_39a
    const/4 v14, 0x0

    .line 178
    :cond_39b
    :goto_39b
    array-length v3, v0

    int-to-long v7, v3

    cmp-long v3, v7, v4

    if-lez v3, :cond_3a3

    add-int/lit8 v2, v2, -0x1

    :cond_3a3
    :goto_3a3
    if-ge v14, v2, :cond_3b2

    .line 181
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzas;

    aget-object v4, v0, v14

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3a3

    .line 183
    :cond_3b2
    :goto_3b2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_3b8
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    .line 138
    invoke-static {v11, v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 140
    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 142
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3de

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_3df

    :cond_3de
    move-wide v7, v0

    .line 143
    :goto_3df
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v7

    cmpg-double v4, v7, v0

    if-gez v4, :cond_3f2

    .line 145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v9, v4

    add-double/2addr v9, v7

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    goto :goto_3fb

    .line 146
    :cond_3f2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :goto_3fb
    double-to-int v4, v7

    .line 147
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_416

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    goto :goto_41b

    :cond_416
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v7, v2

    .line 148
    :goto_41b
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v7

    cmpg-double v2, v7, v0

    if-gez v2, :cond_42e

    .line 150
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v9, v2

    add-double/2addr v9, v7

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_437

    .line 151
    :cond_42e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_437
    double-to-int v0, v0

    sub-int/2addr v0, v4

    const/4 v1, 0x0

    .line 152
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 153
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_449
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    .line 88
    invoke-static {v12, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 90
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 92
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_45e

    const-string v1, ""

    goto :goto_46d

    :cond_45e
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_46d
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_490

    .line 96
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzaf;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/measurement/zzaq;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzaf;-><init>([Lcom/google/android/gms/internal/measurement/zzaq;)V

    return-object v1

    .line 97
    :cond_490
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzd:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    :pswitch_493
    const/4 v0, 0x0

    move-object/from16 v6, p0

    move-object/from16 v2, p3

    .line 233
    invoke-static {v5, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 235
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 237
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_4a7
    const/4 v0, 0x0

    move-object/from16 v6, p0

    move-object/from16 v2, p3

    .line 226
    invoke-static {v5, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 228
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 230
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_4bd
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    .line 74
    invoke-static {v13, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 76
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 78
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_4d6

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e5

    :cond_4d6
    const/4 v1, 0x0

    .line 80
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_4e5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4ef

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_502

    :cond_4ef
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 82
    :goto_502
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_50b

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_50f

    .line 84
    :cond_50b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(D)D

    move-result-wide v2

    .line 85
    :goto_50f
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzai;

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v4

    :pswitch_51f
    const/4 v0, 0x0

    move-object/from16 v6, p0

    move-object/from16 v2, p3

    .line 201
    invoke-static {v14, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 203
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 205
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_533
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 125
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_553

    .line 126
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    goto :goto_559

    .line 127
    :cond_553
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_559
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 131
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_578

    .line 134
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzai;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v1

    .line 135
    :cond_578
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzai;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_584
    const/4 v1, 0x0

    move-object/from16 v6, p0

    move-object v0, v2

    move-object/from16 v2, p3

    .line 215
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 217
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 219
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_59b
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a8

    return-object v6

    .line 38
    :cond_5a8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 41
    :goto_5b0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_5ca

    .line 42
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_5b0

    .line 44
    :cond_5ca
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_5d4
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    .line 24
    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 26
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5fd

    const/4 v0, 0x0

    .line 27
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    double-to-int v14, v0

    goto :goto_5fe

    :cond_5fd
    const/4 v14, 0x0

    .line 29
    :goto_5fe
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    if-ltz v14, :cond_617

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v14, v1, :cond_609

    goto :goto_617

    .line 33
    :cond_609
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 32
    :cond_617
    :goto_617
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzj:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    :pswitch_61a
    const/4 v1, 0x0

    move-object/from16 v6, p0

    move-object/from16 v2, p3

    move-object/from16 v0, v17

    .line 208
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 210
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 212
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzas;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_630
    const/4 v1, 0x0

    move-object/from16 v2, p3

    move-object v0, v6

    move-object/from16 v6, p0

    .line 222
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    return-object v6

    :pswitch_63a
    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 49
    iget-object v0, v6, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    .line 51
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    const-string v2, "length"

    .line 52
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_660

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 54
    :cond_660
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 55
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v3, v1, v3

    if-nez v3, :cond_67c

    double-to-int v1, v1

    if-ltz v1, :cond_67c

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_67c

    .line 58
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzh:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    .line 59
    :cond_67c
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzag;->zzi:Lcom/google/android/gms/internal/measurement/zzaq;

    return-object v0

    :cond_67f
    move-object/from16 v6, p0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%s is not a String function"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_694
    .sparse-switch
        -0x6aaca37f -> :sswitch_17e
        -0x69e9ad94 -> :sswitch_16c
        -0x57513364 -> :sswitch_15a
        -0x5128e1d7 -> :sswitch_149
        -0x50c088ec -> :sswitch_13c
        -0x43ce226a -> :sswitch_132
        -0x36059a58 -> :sswitch_129
        -0x2b53be43 -> :sswitch_120
        -0x1bdda92d -> :sswitch_116
        -0x17d0ad49 -> :sswitch_10c
        0x367422 -> :sswitch_100
        0x62dd9c5 -> :sswitch_f6
        0x6873d92 -> :sswitch_ec
        0x6891b1a -> :sswitch_e1
        0x1f9f6e51 -> :sswitch_d6
        0x413cb2b4 -> :sswitch_cb
        0x73d44649 -> :sswitch_c0
    .end sparse-switch

    :pswitch_data_6da
    .packed-switch 0x0
        :pswitch_63a
        :pswitch_630
        :pswitch_61a
        :pswitch_5d4
        :pswitch_59b
        :pswitch_584
        :pswitch_533
        :pswitch_51f
        :pswitch_4bd
        :pswitch_4a7
        :pswitch_493
        :pswitch_449
        :pswitch_3b8
        :pswitch_306
        :pswitch_28c
        :pswitch_1f5
        :pswitch_19c
    .end packed-switch
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzaq;
    .registers 3

    .line 241
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final zzd()Ljava/lang/Boolean;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/Double;
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x0

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 245
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 247
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzas;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzav;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzav;-><init>(Lcom/google/android/gms/internal/measurement/zzas;)V

    return-object v0
.end method
