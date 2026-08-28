.class public final Lcom/google/android/gms/internal/measurement/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@22.1.2"


# direct methods
.method public static zza(D)D
    .registers 5

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    .line 3
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2a

    cmpl-double v0, p0, v1

    if-eqz v0, :cond_2a

    const-wide/high16 v1, -0x8000000000000000L

    cmpl-double v1, p0, v1

    if-nez v1, :cond_1a

    goto :goto_2a

    :cond_1a
    if-lez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    int-to-double v0, v0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0

    :cond_2a
    :goto_2a
    return-wide p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzh;)I
    .registers 6

    const-string v0, "runtime.counter"

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(D)I

    move-result v1

    const v2, 0xf4240

    if-gt v1, v2, :cond_28

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzai;

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/zzai;-><init>(Ljava/lang/Double;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzaq;)V

    return v1

    .line 13
    :cond_28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Instructions allowed exceeded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbv;
    .registers 4

    if-eqz p0, :cond_11

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzbv;->zza(I)Lcom/google/android/gms/internal/measurement/zzbv;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_15

    return-object v0

    .line 21
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unsupported commandId %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzaq;)Ljava/lang/Object;
    .registers 3

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzd:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 25
    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaq;->zzc:Lcom/google/android/gms/internal/measurement/zzaq;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, ""

    return-object p0

    .line 27
    :cond_15
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzap;

    if-eqz v0, :cond_20

    .line 28
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzap;

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzap;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 29
    :cond_20
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzaf;

    if-eqz v0, :cond_46

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzaf;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzaq;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_45
    return-object v0

    .line 37
    :cond_46
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-nez v0, :cond_55

    .line 38
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 39
    :cond_55
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzap;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzap;->zza()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzap;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzaq;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzaq;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 44
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzbv;ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzbv;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 50
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "%s operation requires %s parameters found %s"

    .line 52
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzaq;Lcom/google/android/gms/internal/measurement/zzaq;)Z
    .registers 6

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 72
    :cond_10
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzax;

    const/4 v2, 0x1

    if-nez v0, :cond_6f

    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzao;

    if-eqz v0, :cond_1a

    goto :goto_6f

    .line 74
    :cond_1a
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzai;

    if-eqz v0, :cond_49

    .line 75
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_48

    .line 77
    :cond_3b
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_48
    :goto_48
    return v1

    .line 78
    :cond_49
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzas;

    if-eqz v0, :cond_5a

    .line 79
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzf()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 80
    :cond_5a
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzag;

    if-eqz v0, :cond_6b

    .line 81
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zzd()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzaq;->zzd()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6b
    if-ne p0, p1, :cond_6e

    return v2

    :cond_6e
    return v1

    :cond_6f
    :goto_6f
    return v2
.end method

.method public static zzb(D)I
    .registers 4

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_28

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_13

    goto :goto_28

    :cond_13
    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, -0x1

    :goto_18
    int-to-double v0, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    const-wide/high16 p0, 0x41f0000000000000L    # 4.294967296E9

    rem-double/2addr v0, p0

    double-to-long p0, v0

    long-to-int p0, p0

    return p0

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzbv;ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzbv;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbv;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_7

    return-void

    .line 57
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "%s operation requires at least %s parameters found %s"

    .line 59
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzaq;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 68
    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaq;->zze()Ljava/lang/Double;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v0
.end method

.method public static zzc(D)J
    .registers 4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzg;->zzb(D)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzc(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzaq;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_7

    return-void

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "%s operation requires at most %s parameters found %s"

    .line 64
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
