.class public final Lcom/google/android/gms/measurement/internal/zzoo;
.super Lcom/google/android/gms/measurement/internal/zznr;
.source "com.google.android.gms:play-services-measurement@@22.1.2"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznv;)V
    .registers 2

    .line 611
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznr;-><init>(Lcom/google/android/gms/measurement/internal/zznv;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Ljava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 3
    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzk(I)Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return v0
.end method

.method static zza(Ljava/util/List;)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_9

    .line 25
    :cond_27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzb()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_9

    .line 27
    :cond_35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 29
    :cond_43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9

    :cond_51
    return-object v0
.end method

.method private final zza(Ljava/util/Map;Z)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_24

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 38
    :cond_24
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_32

    .line 39
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    .line 40
    :cond_32
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_40

    .line 41
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_d

    .line 42
    :cond_40
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_74

    if-eqz p2, :cond_d

    .line 44
    check-cast v3, Ljava/util/ArrayList;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_56
    if-ge v7, v5, :cond_68

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/util/Map;

    .line 47
    invoke-direct {p0, v8, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 48
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_68
    new-array v3, v6, [Landroid/os/Parcelable;

    .line 50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_d

    .line 52
    :cond_74
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_7c
    return-object v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 252
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlb;[B)Lcom/google/android/gms/internal/measurement/zzlb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BuilderT::",
            "Lcom/google/android/gms/internal/measurement/zzlb;",
            ">(TBuilderT;[B)TBuilderT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkb;
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjg;->zza()Lcom/google/android/gms/internal/measurement/zzjg;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 258
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([BLcom/google/android/gms/internal/measurement/zzjg;)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p0

    return-object p0

    .line 259
    :cond_b
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzlb;->zza([B)Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p0

    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 271
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    return-object p2

    :cond_7
    return-object p0
.end method

.method private static zza(ZZZ)Ljava/lang/String;
    .registers 4

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_c

    const-string p0, "Dynamic "

    .line 504
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_13

    const-string p0, "Sequence "

    .line 506
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz p2, :cond_1a

    const-string p0, "Session-Scoped "

    .line 508
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/util/BitSet;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    .line 573
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_37

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_15
    if-ge v7, v1, :cond_2d

    shl-int/lit8 v8, v4, 0x6

    add-int/2addr v8, v7

    .line 577
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-ge v8, v9, :cond_2d

    .line 578
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2a

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 581
    :cond_2d
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_37
    return-object v2
.end method

.method private static zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 781
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_10

    .line 783
    :cond_d
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_10
    :goto_10
    return-void
.end method

.method private static zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 631
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_20

    .line 632
    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 633
    aget-object v3, v2, v0

    .line 634
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v2, v4

    .line 635
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 637
    invoke-static {p0, v2, v3, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_20
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 613
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 615
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 616
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    const/4 v1, -0x1

    .line 620
    :goto_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p1

    .line 621
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_36

    .line 622
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_4d

    .line 623
    :cond_36
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 624
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_4d

    .line 625
    :cond_40
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4d

    .line 626
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    :cond_4d
    :goto_4d
    if-ltz v1, :cond_53

    .line 628
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(ILcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    return-void

    .line 629
    :cond_53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    const-string v1, "  "

    .line 760
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfo$zzc;)V
    .registers 9

    if-nez p3, :cond_3

    return-void

    .line 723
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 726
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzf()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 727
    :cond_1e
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzi()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 729
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_name"

    .line 730
    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 731
    :cond_35
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzj()Z

    move-result v0

    const-string v1, "}\n"

    if-eqz v0, :cond_c2

    add-int/lit8 v0, p2, 0x1

    .line 732
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzfo$zzf;

    move-result-object v2

    if-eqz v2, :cond_c2

    .line 734
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "string_filter"

    .line 735
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {\n"

    .line 736
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzj()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 738
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfo$zzf$zzb;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "match_type"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 739
    :cond_65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzi()Z

    move-result v3

    if-eqz v3, :cond_74

    const-string v3, "expression"

    .line 740
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zze()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 741
    :cond_74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzh()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 742
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "case_sensitive"

    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 743
    :cond_87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zza()I

    move-result v3

    if-lez v3, :cond_bc

    add-int/lit8 v3, v0, 0x1

    .line 744
    invoke-static {p1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "expression_list {\n"

    .line 745
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfo$zzf;->zzf()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    .line 747
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 748
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 749
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    .line 751
    :cond_b9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_bc
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 753
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    :cond_c2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzh()Z

    move-result v0

    if-eqz v0, :cond_d3

    add-int/lit8 v0, p2, 0x1

    const-string v2, "number_filter"

    .line 755
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzc;->zzc()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object p3

    invoke-static {p1, v0, v2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)V

    .line 756
    :cond_d3
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 757
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)V
    .registers 5

    if-nez p3, :cond_3

    return-void

    .line 765
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 766
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 767
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzh()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 769
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfo$zzd$zzb;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 770
    :cond_21
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzj()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 771
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzg()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 772
    :cond_34
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzi()Z

    move-result p2

    if-eqz p2, :cond_43

    const-string p2, "comparison_value"

    .line 773
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 774
    :cond_43
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzl()Z

    move-result p2

    if-eqz p2, :cond_52

    const-string p2, "min_comparison_value"

    .line 775
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 776
    :cond_52
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zzk()Z

    move-result p2

    if-eqz p2, :cond_61

    const-string p2, "max_comparison_value"

    .line 777
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfo$zzd;->zze()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 778
    :cond_61
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 779
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzm;)V
    .registers 14

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x3

    .line 643
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 644
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 645
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzb()I

    move-result p2

    const/16 v0, 0xa

    const/4 v1, 0x4

    const-string v2, ", "

    const/4 v3, 0x0

    if-eqz p2, :cond_47

    .line 647
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "results: "

    .line 648
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzi()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_3f

    .line 652
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_3f
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_2c

    .line 655
    :cond_44
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    :cond_47
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzd()I

    move-result p2

    if-eqz p2, :cond_79

    .line 657
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "status: "

    .line 658
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzk()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v4, v3

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    add-int/lit8 v6, v4, 0x1

    if-eqz v4, :cond_71

    .line 662
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_71
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v4, v6

    goto :goto_5e

    .line 665
    :cond_76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    :cond_79
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zza()I

    move-result p2

    const/4 v0, 0x0

    const-string v4, "}\n"

    if-eqz p2, :cond_d8

    .line 667
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "dynamic_filter_timestamps: {"

    .line 668
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzh()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v5, v3

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfy$zze;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_a6

    .line 672
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    :cond_a6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zzf()Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_b6

    :cond_b5
    move-object v5, v0

    :goto_b6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ":"

    .line 674
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 675
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zze()Z

    move-result v8

    if-eqz v8, :cond_cf

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfy$zze;->zzb()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_d0

    :cond_cf
    move-object v6, v0

    :goto_d0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_93

    .line 677
    :cond_d5
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_d8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzc()I

    move-result p2

    if-eqz p2, :cond_14a

    .line 679
    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string p2, "sequence_filter_timestamps: {"

    .line 680
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzm;->zzj()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v3

    :goto_ef
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_147

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzn;

    add-int/lit8 v5, p3, 0x1

    if-eqz p3, :cond_102

    .line 684
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_102
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzf()Z

    move-result p3

    if-eqz p3, :cond_111

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zzb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_112

    :cond_111
    move-object p3, v0

    :goto_112
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v6, ": ["

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzn;->zze()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v3

    :goto_124
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_140

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    if-eqz v1, :cond_13b

    .line 689
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_13b
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v8

    goto :goto_124

    :cond_140
    const-string p3, "]"

    .line 692
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p3, v5

    goto :goto_ef

    .line 694
    :cond_147
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_14a
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 696
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 787
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 788
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 789
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 791
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final zza(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 701
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    if-eqz v0, :cond_9

    .line 703
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v1, "param {\n"

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzm()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v2

    :goto_34
    const-string v3, "name"

    .line 707
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 709
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    :cond_44
    move-object v1, v2

    :goto_45
    const-string v3, "string_value"

    .line 710
    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 711
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5a

    :cond_59
    move-object v1, v2

    :goto_5a
    const-string v3, "int_value"

    invoke-static {p1, p2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 713
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_6d
    const-string v1, "double_value"

    .line 714
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 715
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc()I

    move-result v1

    if-lez v1, :cond_7f

    .line 716
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 717
    :cond_7f
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v0, "}\n"

    .line 718
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_88
    return-void
.end method

.method static zza(Lcom/google/android/gms/measurement/internal/zzbf;Lcom/google/android/gms/measurement/internal/zzo;)Z
    .registers 2

    .line 838
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method static zza(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 843
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    if-ge p1, v0, :cond_23

    div-int/lit8 v0, p1, 0x40

    .line 844
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 260
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 264
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 266
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 267
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 268
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzc()I

    move-result p1

    if-lez p1, :cond_3e

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzoo;->zzb(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method static zzb(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 850
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 851
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method static zzb(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzh;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    if-eqz v1, :cond_9

    .line 880
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 881
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzi()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 882
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 883
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 884
    :cond_42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 885
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_24

    .line 886
    :cond_54
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 887
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_24

    .line 889
    :cond_66
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 890
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 892
    :cond_70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic g_()Lcom/google/android/gms/measurement/internal/zzoo;
    .registers 2

    .line 232
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->g_()Lcom/google/android/gms/measurement/internal/zzoo;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/String;)J
    .registers 4

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_9
    const-string v0, "UTF-8"

    .line 10
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final zza([B)J
    .registers 4

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzt()V

    .line 13
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzos;->zzu()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_20

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Failed to get MD5"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 17
    :cond_20
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzos;->zza([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic zza()Landroid/content/Context;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 19
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zza([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 57
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 58
    :try_start_8
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 59
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_16
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_8 .. :try_end_16} :catch_1c
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    .line 61
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_1a
    move-exception p1

    goto :goto_2d

    .line 64
    :catch_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string p2, "Failed to load parcelable from buffer"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_1a

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 67
    :goto_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzfy$zzf;
    .registers 7

    .line 234
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    move-result-object v0

    .line 235
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbe;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v3

    .line 237
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 238
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    goto :goto_10

    .line 242
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzdi:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 243
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:Lcom/google/android/gms/measurement/internal/zzbe;

    const-string v2, "_o"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzbe;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6b

    .line 245
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:Ljava/lang/String;

    .line 247
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 249
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh;)Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;

    .line 250
    :cond_6b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzad;)Lcom/google/android/gms/measurement/internal/zzbf;
    .registers 10

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zzc()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/util/Map;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_o"

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1c
    const-string v1, "app"

    :goto_1e
    move-object v5, v1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zzb()Ljava/lang/String;

    move-result-object v1

    :cond_2d
    move-object v3, v1

    .line 84
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbf;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-direct {v4, v0}, Lcom/google/android/gms/measurement/internal/zzbe;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzad;->zza()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzbf;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzbe;Ljava/lang/String;J)V

    return-object v1
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzno;
    .registers 15

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v0

    if-eqz v0, :cond_35a

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_35a

    .line 93
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbg:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_35
    if-ge v6, v4, :cond_5b

    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "duplicate element: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzbh;->zzaz:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, p1, v8}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 103
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "."

    if-nez v7, :cond_a8

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzbh;->zzba:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v7, p1, v9}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_b5

    .line 107
    :cond_a8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzba:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    :goto_b5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "gmp_app_id"

    .line 111
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v3, "gmp_version"

    const-string v4, "106000"

    .line 114
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 115
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzu()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzck:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    const-string v3, ""

    :cond_ee
    const-string v4, "app_instance_id"

    .line 119
    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v3, "rdid"

    .line 121
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzz()Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v3, "bundle_id"

    .line 123
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 124
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zze()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_114

    move-object v3, v4

    :cond_114
    const-string v4, "app_event_name"

    .line 128
    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 130
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_version"

    .line 131
    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 132
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzy()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzck:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v4, p1, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzns;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzs(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_151

    .line 135
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_151

    .line 136
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_151

    .line 138
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_151
    const-string v4, "os_version"

    .line 139
    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 141
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timestamp"

    .line 142
    invoke-static {v6, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 143
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzad()Z

    move-result v3

    const-string v4, "1"

    if-eqz v3, :cond_170

    const-string v3, "lat"

    .line 144
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 146
    :cond_170
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "privacy_sandbox_version"

    .line 147
    invoke-static {v6, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v3, "trigger_uri_source"

    .line 148
    invoke-static {v6, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v3, "trigger_uri_timestamp"

    .line 150
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v6, v3, v5, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    const-string v3, "request_uuid"

    .line 152
    invoke-static {v6, v3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 153
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf$zza;->zzf()Ljava/util/List;

    move-result-object p3

    .line 154
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 155
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_19d
    :goto_19d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    .line 156
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzg()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzj()Z

    move-result v7

    if-eqz v7, :cond_1bf

    .line 158
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zza()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 159
    :cond_1bf
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzk()Z

    move-result v7

    if-eqz v7, :cond_1d1

    .line 160
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzb()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 161
    :cond_1d1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzn()Z

    move-result v7

    if-eqz v7, :cond_1df

    .line 162
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 163
    :cond_1df
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzl()Z

    move-result v7

    if-eqz v7, :cond_19d

    .line 164
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zzd()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 169
    :cond_1f1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzbf:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, p1, v3}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object p3

    const-string v3, "\\|"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 170
    invoke-static {v6, p3, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 171
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzab()Ljava/util/List;

    move-result-object p3

    .line 172
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 173
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_211
    :goto_211
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_265

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    .line 174
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi()Z

    move-result v8

    if-eqz v8, :cond_233

    .line 176
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zza()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_211

    .line 177
    :cond_233
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzj()Z

    move-result v8

    if-eqz v8, :cond_245

    .line 178
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzb()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_211

    .line 179
    :cond_245
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzm()Z

    move-result v8

    if-eqz v8, :cond_253

    .line 180
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_211

    .line 181
    :cond_253
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk()Z

    move-result v8

    if-eqz v8, :cond_211

    .line 182
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_211

    .line 187
    :cond_265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbe:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p3, p1, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {v6, p1, p4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;[Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;)V

    .line 190
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzac()Z

    move-result p1

    if-eqz p1, :cond_27d

    goto :goto_27f

    :cond_27d
    const-string v4, "0"

    :goto_27f
    const-string p1, "dma"

    .line 191
    invoke-static {v6, p1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 192
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_297

    const-string p1, "dma_cps"

    .line 194
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzw()Ljava/lang/String;

    move-result-object p3

    .line 195
    invoke-static {v6, p1, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 196
    :cond_297
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzbh;->zzcm:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result p1

    if-eqz p1, :cond_34b

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzae()Z

    move-result p1

    if-eqz p1, :cond_34b

    .line 197
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;->zzg()Lcom/google/android/gms/internal/measurement/zzfy$zza;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2c0

    const-string p2, "dl_gclid"

    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh()Ljava/lang/String;

    move-result-object p3

    .line 201
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 202
    :cond_2c0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d3

    const-string p2, "dl_gbraid"

    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg()Ljava/lang/String;

    move-result-object p3

    .line 205
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 206
    :cond_2d3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2e6

    const-string p2, "dl_gs"

    .line 208
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf()Ljava/lang/String;

    move-result-object p3

    .line 209
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 210
    :cond_2e6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza()J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-lez p2, :cond_2fd

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "dl_ss_ts"

    .line 213
    invoke-static {v6, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 214
    :cond_2fd
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_310

    const-string p2, "mr_gclid"

    .line 216
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk()Ljava/lang/String;

    move-result-object p3

    .line 217
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 218
    :cond_310
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_323

    const-string p2, "mr_gbraid"

    .line 220
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj()Ljava/lang/String;

    move-result-object p3

    .line 221
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 222
    :cond_323
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_336

    const-string p2, "mr_gs"

    .line 224
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi()Ljava/lang/String;

    move-result-object p3

    .line 225
    invoke-static {v6, p2, p3, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 226
    :cond_336
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzb()J

    move-result-wide p2

    cmp-long p2, p2, v3

    if-lez p2, :cond_34b

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzb()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mr_click_ts"

    .line 229
    invoke-static {v6, p2, p1, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 230
    :cond_34b
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzno;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/zzno;-><init>(Ljava/lang/String;JI)V

    return-object p1

    :cond_35a
    :goto_35a
    const/4 p1, 0x0

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfo$zzb;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    .line 480
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzl()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 483
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 485
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    .line 486
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzh()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzi()Z

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzj()Z

    move-result v4

    .line 489
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "filter_type"

    .line 491
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 492
    :cond_4f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzk()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5f

    const-string v1, "event_count_filter"

    .line 493
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzfo$zzd;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfo$zzd;)V

    .line 494
    :cond_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zza()I

    move-result v1

    if-lez v1, :cond_83

    const-string v1, "  filters {\n"

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zzb;->zzg()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    const/4 v3, 0x2

    .line 497
    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfo$zzc;)V

    goto :goto_72

    .line 499
    :cond_83
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 500
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfo$zze;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_5

    const-string p1, "null"

    return-object p1

    .line 512
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzi()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 515
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 517
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 518
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 520
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzf()Z

    move-result v1

    .line 521
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzg()Z

    move-result v3

    .line 522
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzh()Z

    move-result v4

    .line 523
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v3, "filter_type"

    .line 525
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4f
    const/4 v1, 0x1

    .line 526
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfo$zze;->zzb()Lcom/google/android/gms/internal/measurement/zzfo$zzc;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/zzfo$zzc;)V

    const-string p1, "}\n"

    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)Ljava/lang/String;
    .registers 14

    if-nez p1, :cond_5

    const-string p1, ""

    return-object p1

    .line 275
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 278
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 279
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza()I

    move-result v1

    if-lez v1, :cond_57

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 281
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzh()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "upload_subdomain"

    .line 282
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 283
    :cond_48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzg()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "sgtm_join_id"

    .line 284
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 285
    :cond_57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzf()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5f
    :goto_5f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_591

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    if-eqz v1, :cond_5f

    const/4 v2, 0x1

    .line 288
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v3, "bundle {\n"

    .line 289
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbp()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 291
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "protocol_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 292
    :cond_89
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpo;->zza()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbw:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 294
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbs()Z

    move-result v3

    if-eqz v3, :cond_ae

    const-string v3, "session_stitching_token"

    .line 295
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzao()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_ae
    const-string v3, "platform"

    .line 296
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzam()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbk()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 298
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzn()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "gmp_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_ca
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbx()Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 300
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzt()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uploading_gmp_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 301
    :cond_dd
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbi()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 302
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dynamite_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 303
    :cond_f0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbb()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 304
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzj()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "config_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_103
    const-string v3, "gmp_app_id"

    .line 305
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "admob_app_id"

    .line 306
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzy()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "app_id"

    .line 307
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "app_version"

    .line 308
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 309
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzay()Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 310
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "app_version_major"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_13a
    const-string v3, "firebase_instance_id"

    .line 311
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzai()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbg()Z

    move-result v3

    if-eqz v3, :cond_156

    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzk()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "dev_cert_hash"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_156
    const-string v3, "app_store"

    .line 314
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzab()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 315
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbw()Z

    move-result v3

    if-eqz v3, :cond_172

    .line 316
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzs()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "upload_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 317
    :cond_172
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbt()Z

    move-result v3

    if-eqz v3, :cond_185

    .line 318
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzq()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "start_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 319
    :cond_185
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbj()Z

    move-result v3

    if-eqz v3, :cond_198

    .line 320
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzm()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "end_timestamp_millis"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 321
    :cond_198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbo()Z

    move-result v3

    if-eqz v3, :cond_1ab

    .line 323
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "previous_bundle_start_timestamp_millis"

    .line 324
    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 325
    :cond_1ab
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbn()Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 327
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzo()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "previous_bundle_end_timestamp_millis"

    .line 328
    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1be
    const-string v3, "app_instance_id"

    .line 329
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaa()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "resettable_device_id"

    .line 330
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzan()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "ds_id"

    .line 331
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzah()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbm()Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 333
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzav()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "limited_ad_tracking"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1ec
    const-string v3, "os_version"

    .line 334
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "device_model"

    .line 335
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v3, "user_default_language"

    .line 336
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzap()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 337
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbv()Z

    move-result v3

    if-eqz v3, :cond_21a

    .line 338
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzh()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "time_zone_offset_minutes"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 339
    :cond_21a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzba()Z

    move-result v3

    if-eqz v3, :cond_22d

    .line 340
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzc()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bundle_sequential_index"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 341
    :cond_22d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpu;->zza()Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 342
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzos;->zzf(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 343
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 344
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbf()Z

    move-result v3

    if-eqz v3, :cond_25f

    .line 345
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "delivery_index"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 346
    :cond_25f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbr()Z

    move-result v3

    if-eqz v3, :cond_272

    .line 347
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaw()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "service_upload"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_272
    const-string v3, "health_monitor"

    .line 348
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzak()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbq()Z

    move-result v3

    if-eqz v3, :cond_28e

    .line 350
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "retry_counter"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 351
    :cond_28e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbd()Z

    move-result v3

    if-eqz v3, :cond_29d

    const-string v3, "consent_signals"

    .line 352
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzae()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 353
    :cond_29d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbl()Z

    move-result v3

    if-eqz v3, :cond_2b0

    .line 354
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzau()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "is_dma_region"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 355
    :cond_2b0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbe()Z

    move-result v3

    if-eqz v3, :cond_2bf

    const-string v3, "core_platform_services"

    .line 356
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaf()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 357
    :cond_2bf
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbc()Z

    move-result v3

    if-eqz v3, :cond_2ce

    const-string v3, "consent_diagnostics"

    .line 358
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzad()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_2ce
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzbu()Z

    move-result v3

    if-eqz v3, :cond_2e1

    .line 360
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzr()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "target_os_version"

    invoke-static {v0, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    :cond_2e1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    move-result v3

    const-string v4, "}\n"

    const/4 v5, 0x2

    if-eqz v3, :cond_37c

    .line 362
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzbh;->zzch:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzag;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_37c

    .line 363
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zza()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "ad_services_version"

    invoke-static {v0, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaz()Z

    move-result v3

    if-eqz v3, :cond_37c

    .line 365
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzv()Lcom/google/android/gms/internal/measurement/zzfy$zzc;

    move-result-object v3

    if-eqz v3, :cond_37c

    .line 368
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "attribution_eligibility_status {\n"

    .line 369
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzf()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "eligible"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 372
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzh()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "no_access_adservices_attribution_permission"

    .line 373
    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzi()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "pre_r"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 375
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzj()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "r_extensions_too_old"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 377
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zze()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "adservices_extension_too_old"

    .line 378
    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 379
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzd()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "ad_storage_not_allowed"

    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzc;->zzg()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v6, "measurement_manager_disabled"

    .line 382
    invoke-static {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 383
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 384
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_37c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzov;->zza()Z

    move-result v3

    if-eqz v3, :cond_426

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzag;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v3

    if-eqz v3, :cond_426

    .line 386
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzax()Z

    move-result v3

    if-eqz v3, :cond_426

    .line 387
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzu()Lcom/google/android/gms/internal/measurement/zzfy$zza;

    move-result-object v3

    .line 388
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v6, "ad_campaign_info {\n"

    .line 389
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzn()Z

    move-result v6

    if-eqz v6, :cond_3af

    const-string v6, "deep_link_gclid"

    .line 391
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzh()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 392
    :cond_3af
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzm()Z

    move-result v6

    if-eqz v6, :cond_3be

    const-string v6, "deep_link_gbraid"

    .line 393
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 394
    :cond_3be
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzl()Z

    move-result v6

    if-eqz v6, :cond_3cd

    const-string v6, "deep_link_gad_source"

    .line 395
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzf()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 396
    :cond_3cd
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzo()Z

    move-result v6

    if-eqz v6, :cond_3e0

    .line 398
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zza()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "deep_link_session_millis"

    .line 399
    invoke-static {v0, v5, v7, v6}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 400
    :cond_3e0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzs()Z

    move-result v6

    if-eqz v6, :cond_3ef

    const-string v6, "market_referrer_gclid"

    .line 401
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 402
    :cond_3ef
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzr()Z

    move-result v6

    if-eqz v6, :cond_3fe

    const-string v6, "market_referrer_gbraid"

    .line 403
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzj()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 404
    :cond_3fe
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzq()Z

    move-result v6

    if-eqz v6, :cond_40d

    const-string v6, "market_referrer_gad_source"

    .line 406
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzi()Ljava/lang/String;

    move-result-object v7

    .line 407
    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 408
    :cond_40d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzp()Z

    move-result v6

    if-eqz v6, :cond_420

    .line 410
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zza;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v6, "market_referrer_click_millis"

    .line 411
    invoke-static {v0, v5, v6, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 412
    :cond_420
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 413
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_426
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzas()Ljava/util/List;

    move-result-object v3

    const-string v6, "name"

    if-eqz v3, :cond_4a5

    .line 417
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_432
    :goto_432
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzo;

    if-eqz v7, :cond_432

    .line 419
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v8, "user_property {\n"

    .line 420
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzl()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_458

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzd()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_459

    :cond_458
    move-object v8, v9

    :goto_459
    const-string v10, "set_timestamp_millis"

    .line 423
    invoke-static {v0, v5, v10, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/zzgh;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 426
    invoke-static {v0, v5, v6, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    const-string v8, "string_value"

    .line 427
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzh()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v5, v8, v10}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 428
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzk()Z

    move-result v8

    if-eqz v8, :cond_485

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzc()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_486

    :cond_485
    move-object v8, v9

    :goto_486
    const-string v10, "int_value"

    invoke-static {v0, v5, v10, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zzi()Z

    move-result v8

    if-eqz v8, :cond_499

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzo;->zza()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_499
    const-string v7, "double_value"

    .line 431
    invoke-static {v0, v5, v7, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 432
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 433
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_432

    .line 436
    :cond_4a5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzaq()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzz()Ljava/lang/String;

    if-eqz v3, :cond_50d

    .line 440
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b2
    :goto_4b2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfy$zzd;

    if-eqz v7, :cond_4b2

    .line 442
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v8, "audience_membership {\n"

    .line 443
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzg()Z

    move-result v8

    if-eqz v8, :cond_4db

    .line 445
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zza()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "audience_id"

    invoke-static {v0, v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 446
    :cond_4db
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzh()Z

    move-result v8

    if-eqz v8, :cond_4ee

    .line 447
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzf()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "new_audience"

    invoke-static {v0, v5, v9, v8}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4ee
    const-string v8, "current_data"

    .line 448
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzm;

    move-result-object v9

    invoke-static {v0, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzm;)V

    .line 449
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zzi()Z

    move-result v8

    if-eqz v8, :cond_506

    const-string v8, "previous_data"

    .line 450
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzd;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzm;

    move-result-object v7

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/zzfy$zzm;)V

    .line 451
    :cond_506
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 452
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b2

    .line 454
    :cond_50d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzk;->zzar()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_589

    .line 457
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_517
    :goto_517
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_589

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzf;

    if-eqz v3, :cond_517

    .line 459
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    const-string v7, "event {\n"

    .line 460
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzgh;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 462
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzk()Z

    move-result v7

    if-eqz v7, :cond_54f

    .line 463
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzd()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "timestamp_millis"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 464
    :cond_54f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzj()Z

    move-result v7

    if-eqz v7, :cond_562

    .line 465
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzc()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "previous_timestamp_millis"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 466
    :cond_562
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzi()Z

    move-result v7

    if-eqz v7, :cond_575

    .line 467
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zza()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "count"

    invoke-static {v0, v5, v8, v7}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 468
    :cond_575
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzb()I

    move-result v7

    if-eqz v7, :cond_582

    .line 469
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfy$zzf;->zzh()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 470
    :cond_582
    invoke-static {v0, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 471
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_517

    .line 473
    :cond_589
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Ljava/lang/StringBuilder;I)V

    .line 474
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5f

    :cond_591
    const-string p1, "} // End-of-batch\n"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 530
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 531
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_29

    .line 532
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    const-string v2, "Ignoring negative bit index to be cleared"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 534
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_4b

    .line 536
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v1

    .line 537
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v1

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 540
    :cond_4b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 542
    :cond_68
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 543
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_72
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_8a

    .line 544
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_8a

    add-int/lit8 p2, p1, -0x1

    goto :goto_72

    :cond_8a
    const/4 p1, 0x0

    .line 547
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zza(Landroid/os/Bundle;Z)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 585
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 586
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 588
    instance-of v4, v3, [Landroid/os/Parcelable;

    const/4 v5, 0x0

    if-nez v4, :cond_2d

    instance-of v6, v3, Ljava/util/ArrayList;

    if-nez v6, :cond_2d

    instance-of v6, v3, Landroid/os/Bundle;

    if-eqz v6, :cond_2b

    goto :goto_2d

    :cond_2b
    move v6, v5

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v6, 0x1

    :goto_2e
    if-eqz v6, :cond_83

    if-eqz p2, :cond_d

    .line 592
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_51

    .line 594
    check-cast v3, [Landroid/os/Parcelable;

    array-length v4, v3

    move v7, v5

    :goto_3d
    if-ge v7, v4, :cond_7f

    aget-object v8, v3, v7

    .line 595
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_4e

    .line 596
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 598
    :cond_51
    instance-of v4, v3, Ljava/util/ArrayList;

    if-eqz v4, :cond_72

    .line 599
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v5

    :cond_5c
    :goto_5c
    if-ge v7, v4, :cond_7f

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 600
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_5c

    .line 601
    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {p0, v8, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 603
    :cond_72
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_7f

    .line 604
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzoo;->zza(Landroid/os/Bundle;Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_7f
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_83
    if-eqz v3, :cond_d

    .line 608
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_89
    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;Ljava/lang/Object;)V
    .registers 13

    .line 796
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    .line 798
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 799
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 800
    :cond_1c
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2a

    .line 801
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 802
    :cond_2a
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_38

    .line 803
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 804
    :cond_38
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_b0

    .line 805
    check-cast p2, [Landroid/os/Bundle;

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    array-length v1, p2

    const/4 v2, 0x0

    :goto_45
    if-ge v2, v1, :cond_ac

    aget-object v3, p2, v2

    if-eqz v3, :cond_a9

    .line 809
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v4

    .line 810
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_57
    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 811
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzh;->zze()Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    move-result-object v7

    .line 812
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 813
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_7d

    .line 814
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_94

    .line 815
    :cond_7d
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_87

    .line 816
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_94

    .line 817
    :cond_87
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_57

    .line 818
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    .line 819
    :goto_94
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    goto :goto_57

    .line 821
    :cond_98
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza()I

    move-result v3

    if-lez v3, :cond_a9

    .line 822
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfy$zzh;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 825
    :cond_ac
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzh$zza;

    return-void

    .line 826
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) event param value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;Ljava/lang/Object;)V
    .registers 5

    .line 828
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza()Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    .line 830
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 831
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-void

    .line 832
    :cond_18
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_26

    .line 833
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-void

    .line 834
    :cond_26
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_34

    .line 835
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;->zza(D)Lcom/google/android/gms/internal/measurement/zzfy$zzo$zza;

    return-void

    .line 836
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object p1

    const-string v0, "Ignoring invalid (type) user attribute value"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(JJ)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e

    cmp-long v0, p3, v0

    if-lez v0, :cond_1e

    .line 847
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 69
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final zzb([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 855
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 856
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 857
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 858
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 859
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p1

    .line 861
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to gzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    throw p1
.end method

.method protected final zzc()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzc([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 864
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 865
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 867
    :goto_13
    invoke-virtual {p1, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v4, 0x0

    .line 869
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_13

    .line 871
    :cond_1e
    invoke-virtual {p1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 872
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 873
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_29

    return-object p1

    :catch_29
    move-exception p1

    .line 875
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v0

    const-string v1, "Failed to ungzip content"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    throw p1
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 71
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzd()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzag;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 72
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zze()Lcom/google/android/gms/measurement/internal/zzag;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzaz;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 74
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    .line 70
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzg()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzal;
    .registers 2

    .line 73
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzh()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzgh;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 85
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzi()Lcom/google/android/gms/measurement/internal/zzgh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzgo;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 86
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzha;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 87
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzk()Lcom/google/android/gms/measurement/internal/zzha;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzhv;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 89
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzl()Lcom/google/android/gms/measurement/internal/zzhv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/measurement/internal/zzhl;
    .registers 2

    .line 88
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzm()Lcom/google/android/gms/measurement/internal/zzhl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/measurement/internal/zzmw;
    .registers 2

    .line 90
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzn()Lcom/google/android/gms/measurement/internal/zzmw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zznu;
    .registers 2

    .line 231
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzo()Lcom/google/android/gms/measurement/internal/zznu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzos;
    .registers 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 233
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .registers 1

    .line 793
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzr()V

    return-void
.end method

.method public final bridge synthetic zzs()V
    .registers 1

    .line 794
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzs()V

    return-void
.end method

.method public final bridge synthetic zzt()V
    .registers 1

    .line 795
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zznr;->zzt()V

    return-void
.end method

.method final zzu()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzoo;->zzg:Lcom/google/android/gms/measurement/internal/zznv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznv;->zza()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbh;->zza(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8e

    .line 549
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_8e

    .line 551
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbh;->zzar:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 553
    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzfz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 554
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 555
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 556
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "measurement.id."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 557
    :try_start_48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2e

    .line 559
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_2e

    .line 561
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v4

    .line 562
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v4

    const-string v5, "Too many experiment IDs. Number of IDs"

    .line 563
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_76} :catch_77

    goto :goto_86

    :catch_77
    move-exception v4

    .line 567
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    move-result-object v5

    const-string v6, "Experiment ID NumberFormatException"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    .line 569
    :cond_86
    :goto_86
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    return-object v1

    :cond_8d
    return-object v2

    :cond_8e
    :goto_8e
    return-object v1
.end method
